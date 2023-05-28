module coms_data_convert(
    input   wire            rst                 ,//reset input
    input   wire            cmos_cfg_done       ,//reg configuration done signal
    //ov5640 signal
    input   wire            cmos_pclk           ,//cmos pixel sync
    input   wire            cmos_vsync          ,//cmos v sync
    input   wire            cmos_href           ,//cmos h sync
    input   wire   [7:0]    cmos_data           ,//cmos input 8bit data                            
    //user port 
    output  wire            pclk                ,//pixel out clock
    output  wire            cmos_dvld       ,//frame is active flag
    output  wire            cmos_clk_en         ,//cmos clock enable siagnl
    output  wire   [23:0]   rgb_data        ,
    output  wire            vsync                    
    );


reg     [11:0]  cnt_data        ;          ;
reg     [1:0]   cmos_vsync_pix_hal   ;
reg             ready           ;
reg     [15:0]  pixel_reg;
reg             data_valid_reg   ;



assign  cmos_dvld = cmos_href;
assign  pclk = cmos_pclk;
assign  vsync = cmos_vsync ;
assign  cmos_clk_en = data_valid_reg ||(!cmos_href); 

//--------------------cmos_vsync_pix_hal--------------------
always @(posedge cmos_pclk)begin
    if(rst == 1'b1)begin
        cmos_vsync_pix_hal <= 'd0;
    end
    else if(cmos_cfg_done==1'b0)begin
        cmos_vsync_pix_hal <= 'd0;
    end
    else begin
        cmos_vsync_pix_hal <= {cmos_vsync_pix_hal[0],cmos_vsync};
    end
end

// pix ready 
always @(posedge cmos_pclk)begin
    if(rst == 1'b1)begin
        ready <= 'd0;
    end
    else if(cmos_cfg_done==1'b0)ready <= 'd0;
    else if(cmos_vsync_pix_hal=='d1)ready <= 1'b1;
end

//data cnt
always @(posedge cmos_pclk)begin
    if(rst == 1'b1)begin
        cnt_data <= 'd0;
    end
    else if(cmos_cfg_done==1'b0)begin
        cnt_data <= 'd0;
    end
    else if(cmos_href==1'b1 && ready==1'b1)begin
        cnt_data <= cnt_data + 1'b1;
    end
    else begin
        cnt_data <= 'd0;
    end
end

//convert data
always @(posedge cmos_pclk)begin
    if(rst == 1'b1)begin
        pixel_reg <= 'd0;
    end
    else if(cmos_cfg_done==1'b0)begin
        pixel_reg <= 'd0;
    end
    else if(cmos_href==1'b1 && ready==1'b1)begin
        pixel_reg <= {pixel_reg[7:0],cmos_data};
    end
    else begin
        pixel_reg <= 'd0;
    end
end

//data_valid_reg
always @(posedge cmos_pclk)begin
    if(rst == 1'b1)begin
        data_valid_reg <= 1'd0;
    end
    else if(cnt_data[0]==1'b1)begin
        data_valid_reg <= 1'b1;
    end
    else begin
        data_valid_reg <= 1'b0;
    end
end

assign rgb_data = {pixel_reg[15:11],3'b000,pixel_reg[4:0],3'b000,pixel_reg[10:5],2'b00};




endmodule