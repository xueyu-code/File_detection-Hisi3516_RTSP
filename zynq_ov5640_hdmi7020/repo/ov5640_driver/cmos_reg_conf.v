module  cmos_reg_conf
(
    input   wire            clk         ,
    input   wire            rst         ,
    output  wire            scl         ,
    output  reg             cfg_done    ,
    inout   wire            sda         
);

//FSM
parameter   IDLE    =   3'b001;
parameter   WR_CHECK=   3'b010;
parameter   WRITE   =   3'b100;
parameter   SYS_CYCLE   =   20;
parameter   WAIT_TIME   =   20000000;
parameter   MAX_WAIT    =   WAIT_TIME/SYS_CYCLE - 1;
parameter   DEV_ADDR    =   8'h78;
//SIGNAL
reg             wr_req      ;//write req
wire            wr_done     ;//write done
wire    [7:0]   wr_data     ;//write data
wire    [7:0]   dev_addr    ;//device addr
wire    [15:0]  reg_addr    ;//slave addr

reg     [24:0]  cnt_reg    ;
reg             ready       ;//ready
reg     [3:0]   state       ;//state register
reg     [8:0]   wr_index_reg    ; 
reg     [31:0]  conf_data    ;
reg             start       ;  

//FSM
always @(posedge clk)begin
    if(rst == 1'b1)begin
        state <= IDLE;
    end
    else begin
        case(state)
            IDLE:state <= WR_CHECK;
            WR_CHECK:begin 
                if(cfg_done==1'b1)state <= WR_CHECK;
                else if(cfg_done==1'b0 && ready)state <= WRITE;
            end
            WRITE:begin
                if(wr_done)state <= WR_CHECK;
                else if(cfg_done==1'b1)state <= WR_CHECK;
                else state <= WRITE;
            end  
            default:state <= IDLE;
        endcase
    end
end

//cnt_reg
always @(posedge clk)begin
    if(rst == 1'b1)begin
        cnt_reg <= 'd0;
    end
    else if(state==WR_CHECK)begin
        if(cnt_reg==MAX_WAIT)cnt_reg <= 'd0;
        else cnt_reg <= cnt_reg + 1'b1;
    end  
    else cnt_reg <= 'd0;
end

//ready
always @(posedge clk)begin
    if(rst == 1'b1)begin
        ready <= 1'b0;
    end
    else if(state==WR_CHECK)begin
        if(cnt_reg==MAX_WAIT)ready <= 1'b1;
        else ready <= ready;
    end
    else if(start)ready <= 1'b0; 
end

always @(posedge clk)begin
    if(rst == 1'b1)begin
        conf_data <= {DEV_ADDR,24'ha00100};
    end
    else if(cfg_done==1'b0)begin
        case(wr_index_reg)//REG CONFIG TAB
            9'd0  : conf_data <= {DEV_ADDR,24'h300882}; 
            9'd1  : conf_data <= {DEV_ADDR,24'h300802}; 
            9'd2  : conf_data <= {DEV_ADDR,24'h310302}; 
            9'd3  : conf_data <= {DEV_ADDR,24'h3017ff};
            9'd4  : conf_data <= {DEV_ADDR,24'h3018ff};
            9'd5  : conf_data <= {DEV_ADDR,24'h303713}; 
            9'd6  : conf_data <= {DEV_ADDR,24'h310801}; 
            9'd7  : conf_data <= {DEV_ADDR,24'h363036};
            9'd8  : conf_data <= {DEV_ADDR,24'h36310e};
            9'd9  : conf_data <= {DEV_ADDR,24'h3632e2};
            9'd10 : conf_data <= {DEV_ADDR,24'h363312};
            9'd11 : conf_data <= {DEV_ADDR,24'h3621e0};
            9'd12 : conf_data <= {DEV_ADDR,24'h3704a0};
            9'd13 : conf_data <= {DEV_ADDR,24'h37035a};
            9'd14 : conf_data <= {DEV_ADDR,24'h371578};
            9'd15 : conf_data <= {DEV_ADDR,24'h371701};
            9'd16 : conf_data <= {DEV_ADDR,24'h370b60};
            9'd17 : conf_data <= {DEV_ADDR,24'h37051a};
            9'd18 : conf_data <= {DEV_ADDR,24'h390502};
            9'd19 : conf_data <= {DEV_ADDR,24'h390610};
            9'd20 : conf_data <= {DEV_ADDR,24'h39010a};
            9'd21 : conf_data <= {DEV_ADDR,24'h373112};
            9'd22 : conf_data <= {DEV_ADDR,24'h360008}; 
            9'd23 : conf_data <= {DEV_ADDR,24'h360133}; 
            9'd24 : conf_data <= {DEV_ADDR,24'h302d60}; 
            9'd25 : conf_data <= {DEV_ADDR,24'h362052};
            9'd26 : conf_data <= {DEV_ADDR,24'h371b20};
            9'd27 : conf_data <= {DEV_ADDR,24'h471c50};
            9'd28 : conf_data <= {DEV_ADDR,24'h3a1343}; 
            9'd29 : conf_data <= {DEV_ADDR,24'h3a1800}; 
            9'd30 : conf_data <= {DEV_ADDR,24'h3a19f8}; 
            9'd31 : conf_data <= {DEV_ADDR,24'h363513};
            9'd32 : conf_data <= {DEV_ADDR,24'h363603};
            9'd33 : conf_data <= {DEV_ADDR,24'h363440};
            9'd34 : conf_data <= {DEV_ADDR,24'h362201};
            9'd35 : conf_data <= {DEV_ADDR,24'h3c0134};
            9'd36 : conf_data <= {DEV_ADDR,24'h3c0428};
            9'd37 : conf_data <= {DEV_ADDR,24'h3c0598};
            9'd38 : conf_data <= {DEV_ADDR,24'h3c0600}; 
            9'd39 : conf_data <= {DEV_ADDR,24'h3c0708}; 
            9'd40 : conf_data <= {DEV_ADDR,24'h3c0800}; 
            9'd41 : conf_data <= {DEV_ADDR,24'h3c091c}; 
            9'd42 : conf_data <= {DEV_ADDR,24'h3c0a9c}; 
            9'd43 : conf_data <= {DEV_ADDR,24'h3c0b40}; 
            9'd44 : conf_data <= {DEV_ADDR,24'h381000}; 
            9'd45 : conf_data <= {DEV_ADDR,24'h381110}; 
            9'd46 : conf_data <= {DEV_ADDR,24'h381200}; 
            9'd47 : conf_data <= {DEV_ADDR,24'h370864};
            9'd48 : conf_data <= {DEV_ADDR,24'h400102}; 
            9'd49 : conf_data <= {DEV_ADDR,24'h40051a}; 
            9'd50 : conf_data <= {DEV_ADDR,24'h300000}; 
            9'd51 : conf_data <= {DEV_ADDR,24'h3004ff}; 
            9'd52 : conf_data <= {DEV_ADDR,24'h430061}; 
            9'd53 : conf_data <= {DEV_ADDR,24'h501f01}; 
            9'd54 : conf_data <= {DEV_ADDR,24'h440e00};
            9'd55 : conf_data <= {DEV_ADDR,24'h5000a7}; 
            9'd56 : conf_data <= {DEV_ADDR,24'h3a0f30}; 
            9'd57 : conf_data <= {DEV_ADDR,24'h3a1028}; 
            9'd58 : conf_data <= {DEV_ADDR,24'h3a1b30}; 
            9'd59 : conf_data <= {DEV_ADDR,24'h3a1e26}; 
            9'd60 : conf_data <= {DEV_ADDR,24'h3a1160}; 
            9'd61 : conf_data <= {DEV_ADDR,24'h3a1f14}; 
            9'd62 : conf_data <= {DEV_ADDR,24'h580023}; 
            9'd63 : conf_data <= {DEV_ADDR,24'h580114};
            9'd64 : conf_data <= {DEV_ADDR,24'h58020f};
            9'd65 : conf_data <= {DEV_ADDR,24'h58030f};
            9'd66 : conf_data <= {DEV_ADDR,24'h580412};
            9'd67 : conf_data <= {DEV_ADDR,24'h580526};
            9'd68 : conf_data <= {DEV_ADDR,24'h58060c};
            9'd69 : conf_data <= {DEV_ADDR,24'h580708};
            9'd70 : conf_data <= {DEV_ADDR,24'h580805};
            9'd71 : conf_data <= {DEV_ADDR,24'h580905};
            9'd72 : conf_data <= {DEV_ADDR,24'h580a08};
            9'd73 : conf_data <= {DEV_ADDR,24'h580b0d};
            9'd74 : conf_data <= {DEV_ADDR,24'h580c08};
            9'd75 : conf_data <= {DEV_ADDR,24'h580d03};
            9'd76 : conf_data <= {DEV_ADDR,24'h580e00};
            9'd77 : conf_data <= {DEV_ADDR,24'h580f00};
            9'd78 : conf_data <= {DEV_ADDR,24'h581003};
            9'd79 : conf_data <= {DEV_ADDR,24'h581109};
            9'd80 : conf_data <= {DEV_ADDR,24'h581207};
            9'd81 : conf_data <= {DEV_ADDR,24'h581303};
            9'd82 : conf_data <= {DEV_ADDR,24'h581400};
            9'd83 : conf_data <= {DEV_ADDR,24'h581501};
            9'd84 : conf_data <= {DEV_ADDR,24'h581603};
            9'd85 : conf_data <= {DEV_ADDR,24'h581708};
            9'd86 : conf_data <= {DEV_ADDR,24'h58180d};
            9'd87 : conf_data <= {DEV_ADDR,24'h581908};
            9'd88 : conf_data <= {DEV_ADDR,24'h581a05};
            9'd89 : conf_data <= {DEV_ADDR,24'h581b06};
            9'd90 : conf_data <= {DEV_ADDR,24'h581c08};
            9'd91 : conf_data <= {DEV_ADDR,24'h581d0e};
            9'd92 : conf_data <= {DEV_ADDR,24'h581e29};
            9'd93 : conf_data <= {DEV_ADDR,24'h581f17};
            9'd94 : conf_data <= {DEV_ADDR,24'h582011};
            9'd95 : conf_data <= {DEV_ADDR,24'h582111};
            9'd96 : conf_data <= {DEV_ADDR,24'h582215};
            9'd97 : conf_data <= {DEV_ADDR,24'h582328};
            9'd98 : conf_data <= {DEV_ADDR,24'h582446};
            9'd99 : conf_data <= {DEV_ADDR,24'h582526};
            9'd100: conf_data <= {DEV_ADDR,24'h582608};
            9'd101: conf_data <= {DEV_ADDR,24'h582726};
            9'd102: conf_data <= {DEV_ADDR,24'h582864};
            9'd103: conf_data <= {DEV_ADDR,24'h582926};
            9'd104: conf_data <= {DEV_ADDR,24'h582a24};
            9'd105: conf_data <= {DEV_ADDR,24'h582b22};
            9'd106: conf_data <= {DEV_ADDR,24'h582c24};
            9'd107: conf_data <= {DEV_ADDR,24'h582d24};
            9'd108: conf_data <= {DEV_ADDR,24'h582e06};
            9'd109: conf_data <= {DEV_ADDR,24'h582f22};
            9'd110: conf_data <= {DEV_ADDR,24'h583040};
            9'd111: conf_data <= {DEV_ADDR,24'h583142};
            9'd112: conf_data <= {DEV_ADDR,24'h583224};
            9'd113: conf_data <= {DEV_ADDR,24'h583326};
            9'd114: conf_data <= {DEV_ADDR,24'h583424};
            9'd115: conf_data <= {DEV_ADDR,24'h583522};
            9'd116: conf_data <= {DEV_ADDR,24'h583622};
            9'd117: conf_data <= {DEV_ADDR,24'h583726};
            9'd118: conf_data <= {DEV_ADDR,24'h583844};
            9'd119: conf_data <= {DEV_ADDR,24'h583924};
            9'd120: conf_data <= {DEV_ADDR,24'h583a26};
            9'd121: conf_data <= {DEV_ADDR,24'h583b28};
            9'd122: conf_data <= {DEV_ADDR,24'h583c42};
            9'd123: conf_data <= {DEV_ADDR,24'h583dce};
            9'd124: conf_data <= {DEV_ADDR,24'h5180ff};
            9'd125: conf_data <= {DEV_ADDR,24'h5181f2};
            9'd126: conf_data <= {DEV_ADDR,24'h518200};
            9'd127: conf_data <= {DEV_ADDR,24'h518314};
            9'd128: conf_data <= {DEV_ADDR,24'h518425};
            9'd129: conf_data <= {DEV_ADDR,24'h518524};
            9'd130: conf_data <= {DEV_ADDR,24'h518609};
            9'd131: conf_data <= {DEV_ADDR,24'h518709};
            9'd132: conf_data <= {DEV_ADDR,24'h518809};
            9'd133: conf_data <= {DEV_ADDR,24'h518975};
            9'd134: conf_data <= {DEV_ADDR,24'h518a54};
            9'd135: conf_data <= {DEV_ADDR,24'h518be0};
            9'd136: conf_data <= {DEV_ADDR,24'h518cb2};
            9'd137: conf_data <= {DEV_ADDR,24'h518d42};
            9'd138: conf_data <= {DEV_ADDR,24'h518e3d};
            9'd139: conf_data <= {DEV_ADDR,24'h518f56};
            9'd140: conf_data <= {DEV_ADDR,24'h519046};
            9'd141: conf_data <= {DEV_ADDR,24'h5191f8};
            9'd142: conf_data <= {DEV_ADDR,24'h519204};
            9'd143: conf_data <= {DEV_ADDR,24'h519370};
            9'd144: conf_data <= {DEV_ADDR,24'h5194f0};
            9'd145: conf_data <= {DEV_ADDR,24'h5195f0};
            9'd146: conf_data <= {DEV_ADDR,24'h519603};
            9'd147: conf_data <= {DEV_ADDR,24'h519701};
            9'd148: conf_data <= {DEV_ADDR,24'h519804};
            9'd149: conf_data <= {DEV_ADDR,24'h519912};
            9'd150: conf_data <= {DEV_ADDR,24'h519a04};
            9'd151: conf_data <= {DEV_ADDR,24'h519b00};
            9'd152: conf_data <= {DEV_ADDR,24'h519c06};
            9'd153: conf_data <= {DEV_ADDR,24'h519d82};
            9'd154: conf_data <= {DEV_ADDR,24'h519e38};
            9'd155: conf_data <= {DEV_ADDR,24'h548001}; 
            9'd156: conf_data <= {DEV_ADDR,24'h548108};
            9'd157: conf_data <= {DEV_ADDR,24'h548214};
            9'd158: conf_data <= {DEV_ADDR,24'h548328};
            9'd159: conf_data <= {DEV_ADDR,24'h548451};
            9'd160: conf_data <= {DEV_ADDR,24'h548565};
            9'd161: conf_data <= {DEV_ADDR,24'h548671};
            9'd162: conf_data <= {DEV_ADDR,24'h54877d};
            9'd163: conf_data <= {DEV_ADDR,24'h548887};
            9'd164: conf_data <= {DEV_ADDR,24'h548991};
            9'd165: conf_data <= {DEV_ADDR,24'h548a9a};
            9'd166: conf_data <= {DEV_ADDR,24'h548baa};
            9'd167: conf_data <= {DEV_ADDR,24'h548cb8};
            9'd168: conf_data <= {DEV_ADDR,24'h548dcd};
            9'd169: conf_data <= {DEV_ADDR,24'h548edd};
            9'd170: conf_data <= {DEV_ADDR,24'h548fea};
            9'd171: conf_data <= {DEV_ADDR,24'h54901d};
            9'd172: conf_data <= {DEV_ADDR,24'h53811e};
            9'd173: conf_data <= {DEV_ADDR,24'h53825b};
            9'd174: conf_data <= {DEV_ADDR,24'h538308};
            9'd175: conf_data <= {DEV_ADDR,24'h53840a};
            9'd176: conf_data <= {DEV_ADDR,24'h53857e};
            9'd177: conf_data <= {DEV_ADDR,24'h538688};
            9'd178: conf_data <= {DEV_ADDR,24'h53877c};
            9'd179: conf_data <= {DEV_ADDR,24'h53886c};
            9'd180: conf_data <= {DEV_ADDR,24'h538910};
            9'd181: conf_data <= {DEV_ADDR,24'h538a01};
            9'd182: conf_data <= {DEV_ADDR,24'h538b98};
            9'd183: conf_data <= {DEV_ADDR,24'h558006};
            9'd184: conf_data <= {DEV_ADDR,24'h558340};
            9'd185: conf_data <= {DEV_ADDR,24'h558410};
            9'd186: conf_data <= {DEV_ADDR,24'h558910};
            9'd187: conf_data <= {DEV_ADDR,24'h558a00};
            9'd188: conf_data <= {DEV_ADDR,24'h558bf8};
            9'd189: conf_data <= {DEV_ADDR,24'h501d40}; 
            9'd190: conf_data <= {DEV_ADDR,24'h530008};
            9'd191: conf_data <= {DEV_ADDR,24'h530130};
            9'd192: conf_data <= {DEV_ADDR,24'h530210};
            9'd193: conf_data <= {DEV_ADDR,24'h530300};
            9'd194: conf_data <= {DEV_ADDR,24'h530408};
            9'd195: conf_data <= {DEV_ADDR,24'h530530};
            9'd196: conf_data <= {DEV_ADDR,24'h530608};
            9'd197: conf_data <= {DEV_ADDR,24'h530716};
            9'd198: conf_data <= {DEV_ADDR,24'h530908};
            9'd199: conf_data <= {DEV_ADDR,24'h530a30};
            9'd200: conf_data <= {DEV_ADDR,24'h530b04};
            9'd201: conf_data <= {DEV_ADDR,24'h530c06};
            9'd202: conf_data <= {DEV_ADDR,24'h502500};
            9'd203: conf_data <= {DEV_ADDR,24'h303511}; 
            9'd204: conf_data <= {DEV_ADDR,24'h30363c}; 
            9'd205: conf_data <= {DEV_ADDR,24'h3c0708};
            9'd206: conf_data <= {DEV_ADDR,24'h382046};
            9'd207: conf_data <= {DEV_ADDR,24'h382101};
            9'd208: conf_data <= {DEV_ADDR,24'h381431};
            9'd209: conf_data <= {DEV_ADDR,24'h381531};
            9'd210: conf_data <= {DEV_ADDR,24'h380000};
            9'd211: conf_data <= {DEV_ADDR,24'h380100};
            9'd212: conf_data <= {DEV_ADDR,24'h380200};
            9'd213: conf_data <= {DEV_ADDR,24'h380304};
            9'd214: conf_data <= {DEV_ADDR,24'h38040a};
            9'd215: conf_data <= {DEV_ADDR,24'h38053f};
            9'd216: conf_data <= {DEV_ADDR,24'h380607};
            9'd217: conf_data <= {DEV_ADDR,24'h38079b};
            9'd218: conf_data <= {DEV_ADDR,24'h380804};
            9'd219: conf_data <= {DEV_ADDR,24'h380900};
            9'd220: conf_data <= {DEV_ADDR,24'h380a03};
            9'd221: conf_data <= {DEV_ADDR,24'h380b00};
            9'd222: conf_data <= {DEV_ADDR,24'h380c08};
            9'd223: conf_data <= {DEV_ADDR,24'h380dC0};
            9'd224: conf_data <= {DEV_ADDR,24'h380e04};
            9'd225: conf_data <= {DEV_ADDR,24'h380fF8};
            9'd226: conf_data <= {DEV_ADDR,24'h381306};
            9'd227: conf_data <= {DEV_ADDR,24'h361800};
            9'd228: conf_data <= {DEV_ADDR,24'h361229};
            9'd229: conf_data <= {DEV_ADDR,24'h370952};
            9'd230: conf_data <= {DEV_ADDR,24'h370c03};
            9'd231: conf_data <= {DEV_ADDR,24'h3a0217}; 
            9'd232: conf_data <= {DEV_ADDR,24'h3a0310}; 
            9'd233: conf_data <= {DEV_ADDR,24'h3a1417}; 
            9'd234: conf_data <= {DEV_ADDR,24'h3a1510}; 
            9'd235: conf_data <= {DEV_ADDR,24'h400402}; 
            9'd236: conf_data <= {DEV_ADDR,24'h471303}; 
            9'd237: conf_data <= {DEV_ADDR,24'h440704}; 
            9'd238: conf_data <= {DEV_ADDR,24'h460c22}; 
            9'd239: conf_data <= {DEV_ADDR,24'h483722}; 
            9'd240: conf_data <= {DEV_ADDR,24'h382402}; 
            9'd241: conf_data <= {DEV_ADDR,24'h5001a3}; 
            9'd242: conf_data <= {DEV_ADDR,24'h3b070a}; 
            9'd243: conf_data <= {DEV_ADDR,24'h503d00}; 
            9'd244: conf_data <= {DEV_ADDR,24'h301602};
            9'd245: conf_data <= {DEV_ADDR,24'h301c02};
            9'd246: conf_data <= {DEV_ADDR,24'h301902}; 
            9'd247: conf_data <= {DEV_ADDR,24'h301900}; 
            default:conf_data <=  'hFFFFFFFF ; 

        endcase
    end
end

assign {dev_addr,reg_addr,wr_data} = conf_data;


always @(posedge clk)begin
    if(rst == 1'b1)begin
        wr_index_reg <= 'd0;
    end
    else if(dev_addr==8'hFF)wr_index_reg <= wr_index_reg;
    else if(wr_done && cfg_done==1'b0)wr_index_reg <= wr_index_reg + 1'b1;
    else wr_index_reg <= wr_index_reg;
end


//wr_req
always @(posedge clk)begin
    if(rst == 1'b1)begin
        wr_req <= 1'b0;
    end
    else if(cfg_done==1'b1)wr_req <= 1'b0;
    else if(wr_done)wr_req <= 1'b0;
    else if(state==WR_CHECK && cfg_done==1'b0 && ready && dev_addr!=8'hff)
	begin
        wr_req <= 1'b1;
    end
    else wr_req <= wr_req;
end

//cfg_done
always @(posedge clk)begin
    if(rst == 1'b1)begin
        cfg_done <= 1'b0;
    end
    else if(dev_addr ==8'hff)cfg_done <= 1'b1;
end

//start
always @(posedge clk)begin
    if(rst == 1'b1)begin
        start <= 1'b0;
    end
    else if(state==WR_CHECK && cfg_done==1'b0 && ready && dev_addr!=8'hff)start <= 1'b1;
    else start <= 1'b0;
end

    iic_sccb iic_sccb_inst 
	 (
            .clk      (clk),
            .rst      (rst),
            .wr_req   (wr_req),
            .start    (start),
            .dev_addr (dev_addr),
            .reg_addr (reg_addr),
            .wr_data  (wr_data),
            .wr_done  (wr_done),
            .scl      (scl),
            .sda      (sda)
        );

endmodule

