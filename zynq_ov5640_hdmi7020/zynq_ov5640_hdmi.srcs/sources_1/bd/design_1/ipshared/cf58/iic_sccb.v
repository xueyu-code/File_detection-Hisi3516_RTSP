module iic_sccb
(
  input   wire              clk     ,
    input   wire            rst     ,
    input   wire            wr_req  ,
    input   wire            start   ,
    input   wire    [7:0]   dev_addr,
    input   wire    [15:0]  reg_addr,
    input   wire    [7:0]   wr_data ,
    output  reg             wr_done ,
    output  reg             scl     ,
    inout   wire            sda      
    );

//==================================================
//parameter define
//==================================================
parameter   IDLE    = 10'b00_0000_0001;
parameter   WR_START= 10'b00_0000_0010;
parameter   WR_DEV  = 10'b00_0000_0100;
parameter   WR_MEM  = 10'b00_0000_1000;
parameter   WR_DATA = 10'b00_0001_0000;
parameter   STOP    = 10'b01_0000_0000;
parameter   ERROR   = 10'b10_0000_0000;


parameter   SYS_CYCLE = 20;
parameter   IIC_CYCLE = 5000;
parameter   MAX      = (IIC_CYCLE/SYS_CYCLE) -1;
parameter   T_HIGH   = 2000 ;
parameter   T_LOW    = 3000 ;

parameter   FLAG0 = ((T_HIGH/SYS_CYCLE)>>1) - 1;
parameter   FLAG1 = (T_HIGH/SYS_CYCLE) - 1;
parameter   FLAG2  = (T_HIGH/SYS_CYCLE) + ((T_LOW/SYS_CYCLE)>>1) -1;
parameter   FLAG3  = (T_HIGH/SYS_CYCLE) + (T_LOW/SYS_CYCLE) - 1;

reg     [2:0]   cnt_freq    ;
wire            add_cnt_freq;
wire            end_cnt_freq;


reg     [5:0]   cnt_flag    ;
wire            add_cnt_flag;
wire            end_cnt_flag;
reg     [5:0]   cnt_flag_tmp;

reg     [9:0]   cnt_reg         ;
wire            add_cnt     ;
wire            end_cnt     ;

reg             drive_flag  ;
reg     [8:0]   state       ;
reg             work_flag   ;
reg             wr_en       ;
reg     [7:0]   data_shift  ;
reg             ack_flag    ;

reg             cnt_byte    ;

reg             wr_sda      ;
wire            rec_sda     ;

assign  sda = wr_en?wr_sda:1'bz;//IIC SDA IS BIDIRECTION
assign  rec_sda = sda;
//state machine
always @(posedge clk)begin
    if(rst == 1'b1)begin
        state <= IDLE;
    end
    else begin
        case(state)
            IDLE:begin
                if(start==1'b1 && (wr_req==1'b1))state <= WR_START;
                else state <= IDLE;
            end

            WR_START:begin
                if(cnt_flag=='d6 && drive_flag)
                    state <= WR_DEV;
                else state <= WR_START;
            end

            WR_DEV:begin
                if(cnt_flag=='d35 && drive_flag && ack_flag==1'b1)
                    state <= WR_MEM;
                else if(cnt_flag=='d35 && drive_flag && ack_flag==1'b0)
                    state <= ERROR;
                else state <= WR_DEV;
            end

            WR_MEM:begin
                if(cnt_flag=='d35 && drive_flag && ack_flag==1'b1 && cnt_byte=='d1)begin
                    if(wr_req==1'b1)state <= WR_DATA;
                end
                else if(cnt_flag=='d35 && drive_flag && ack_flag==1'b0)
                    state <= ERROR;
                else 
                    state <= WR_MEM;
            end

            WR_DATA:begin
                if(cnt_flag=='d35 && drive_flag && ack_flag==1'b1)
                    state <= STOP;
                else if(cnt_flag=='d35 && drive_flag && ack_flag==1'b0)
                    state <= ERROR;
                else
                    state <= WR_DATA;
            end

            STOP:begin
                if(cnt_flag=='d3 && drive_flag)
                    state <= IDLE;
                else
                    state <= STOP;
            end

            ERROR:begin
                state <= IDLE;
            end

            default:begin
                state <= IDLE;
            end
        endcase
    end
end

//work_flag
always @(posedge clk)begin
    if(rst == 1'b1)begin
        work_flag <= 1'b0;
    end
    else if(state==WR_START)begin
        work_flag <= 1'b1;
    end
    else if(wr_done==1'b1)begin
        work_flag <= 1'b0;
    end
end

//cnt_reg
always @(posedge clk)begin
    if(rst==1'b1)begin
        cnt_reg <= 0;
    end
    else if(add_cnt)begin
        if(end_cnt)
            cnt_reg <= 0;
        else
            cnt_reg <= cnt_reg + 1'b1;
    end
    else begin
        cnt_reg <= 'd0;
    end
end

assign add_cnt = work_flag;       
assign end_cnt = add_cnt && cnt_reg== MAX;

//drive_flag
always @(posedge clk)begin
    if(rst == 1'b1)begin
        drive_flag <= 1'b0;
    end
    else if(cnt_reg==FLAG0 || cnt_reg==FLAG1 || cnt_reg==FLAG2 || cnt_reg==FLAG3)begin
        drive_flag <= 1'b1;
    end
    else begin
        drive_flag <= 1'b0;
    end
end

//cnt_freq,iic clk
always @(posedge clk)begin
    if(rst==1'b1)begin
        cnt_freq <= 0;
    end
    else if(work_flag == 1'b0)begin
        cnt_freq <= 'd0;
    end
    else if(add_cnt_freq)begin
        if(end_cnt_freq)
            cnt_freq <= 0;
        else
            cnt_freq <= cnt_freq + 1'b1;
    end
    else begin
        cnt_freq <= cnt_freq;
    end
end
assign add_cnt_freq = drive_flag;       
assign end_cnt_freq = add_cnt_freq && cnt_freq== 4-1; 
//scl
always @(posedge clk)begin
    if(rst == 1'b1)begin
        scl <= 1'b1;
    end
    else if(work_flag==1'b1)begin
        if(cnt_freq=='d1 && drive_flag &&state==STOP)begin
            scl <= 1'b1;
        end
        else if(cnt_freq=='d1 && drive_flag && state!= STOP)begin
            scl <= 1'b0;
        end
        else if(cnt_freq=='d3 && drive_flag)begin
            scl <= 1'b1;
        end
    end
    else begin
        scl <= 1'b1;
    end
end

//cnt_flag
always @(posedge clk)begin
    if(rst==1'b1)begin
        cnt_flag <= 0;
    end
    else if(work_flag==1'b0)begin
        cnt_flag <= 'd0;
    end
    else if(add_cnt_flag)begin
        if(end_cnt_flag)
            cnt_flag <= 0;
        else
            cnt_flag <= cnt_flag + 1'b1;
    end
    else begin
        cnt_flag <= cnt_flag;
    end
end

assign add_cnt_flag = drive_flag;       
assign end_cnt_flag = add_cnt_flag && cnt_flag== cnt_flag_tmp ; 

//tmp
always  @(*)begin
    case(state)
        IDLE: cnt_flag_tmp=0;
        WR_START: cnt_flag_tmp= 7 - 1;
        WR_DEV,WR_MEM,WR_DATA: cnt_flag_tmp=36 - 1;
        STOP: cnt_flag_tmp = 4 - 1;
        default: cnt_flag_tmp = 0;          
    endcase
end

//cnt_byte
always @(posedge clk)begin
    if(rst == 1'b1)begin
        cnt_byte <= 'd0;
    end
    else if(state==WR_MEM && end_cnt_flag)begin
        cnt_byte <= cnt_byte + 1'b1;
    end
end
//wr_en
always @(posedge clk)begin
    if(rst == 1'b1)begin
        wr_en <= 1'b0;
    end
    else if(state==WR_START || state==STOP)begin
        wr_en <= 1'b1;
    end
    else if(state==WR_DEV || state==WR_MEM ||state==WR_DATA)begin
        if(cnt_flag < 'd32)begin
            wr_en <= 1'b1;
        end
        else begin
            wr_en <= 1'b0;
        end
    end
    else begin
        wr_en <= 1'b0;
    end
end

//data_shift
always @(posedge clk)begin
    if(rst == 1'b1)begin
        data_shift <= 'd0;
    end
    else begin
        case(state)
            IDLE:begin
                data_shift <= 'd0;
            end

            WR_START:begin
                data_shift <= {dev_addr[7:1],1'b0};
            end

            WR_DEV:begin
                if(end_cnt_flag && ack_flag==1'b1)
                    data_shift <= reg_addr[15:8];
                else if(cnt_flag<'d32 && cnt_flag[1:0]==2'd3 && drive_flag)
                    data_shift <= {data_shift[6:0],1'b0};
            end

            WR_MEM:begin
                if(end_cnt_flag && ack_flag==1'b1 && wr_req==1'b1 && cnt_byte==1'b0)
                    data_shift <= reg_addr[7:0];
                else if(end_cnt_flag && ack_flag==1'b1 && wr_req==1'b1 && cnt_byte==1'b1)
                    data_shift <= wr_data;
                else if(cnt_flag<'d32 && cnt_flag[1:0]==2'd3 && drive_flag)
                    data_shift <= {data_shift[6:0],1'b0};
            end

            WR_DATA:begin
                if(cnt_flag<'d32 && cnt_flag[1:0]==2'd3 && drive_flag)
                    data_shift <= {data_shift[6:0],1'b0};
                else
                   data_shift <= data_shift; 
            end

            default:begin
                data_shift <= data_shift;
            end
        endcase
    end
end

//wr_sda
always @(posedge clk)begin
    if(rst == 1'b1)begin
        wr_sda = 1'b1;
    end
    else begin
        case(state)
            WR_START:begin
                if(cnt_flag=='d4 && drive_flag)
                    wr_sda <= 1'b0;
                else
                    wr_sda <= wr_sda;
            end

            WR_DEV,WR_MEM,WR_DATA:begin
                wr_sda <= data_shift[7];
            end
            STOP:begin
                    if(cnt_flag=='d0 && wr_en)
                        wr_sda <= 1'b0;
                    else if(cnt_flag=='d1 && drive_flag)
                        wr_sda <= 1'b1;
            end
            
            default:wr_sda <= 1'b1;
        endcase
    end
end

//wr_done
always @(posedge clk)begin
    if(rst == 1'b1)begin
        wr_done <= 1'b0;
    end
    else if(state==STOP && end_cnt_flag)begin
        if(wr_req==1'b1) wr_done <= 1'b1;
    end
    else begin
        wr_done <= 1'b0;
    end
end

//ack_flag
always @(posedge clk)begin
    if(rst == 1'b1)begin
        ack_flag <= 1'b0;
    end
    else begin
        case(state)
            WR_DEV:begin
                if(cnt_flag>='d32 && cnt_flag[1:0]=='d1 && drive_flag && sda==1'b0)
                    ack_flag <= 1'b1;
                else if(end_cnt_flag)
                    ack_flag <= 1'b0;
            end

            WR_MEM:begin
                if(cnt_flag>='d32 && cnt_flag[1:0]=='d1 && drive_flag && sda==1'b0)
                    ack_flag <= 1'b1;
                else if(end_cnt_flag)
                    ack_flag <= 1'b0;
            end

            WR_DATA:begin
                if(cnt_flag>='d32 && cnt_flag[1:0]=='d1 && drive_flag && sda==1'b0)
                    ack_flag <= 1'b1;
                else if(end_cnt_flag)
                    ack_flag <= 1'b0;
            end
            default: ack_flag <= 1'b0;
        endcase
    end
end

endmodule
