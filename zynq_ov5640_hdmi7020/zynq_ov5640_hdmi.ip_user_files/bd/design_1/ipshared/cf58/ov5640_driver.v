module ov5640_driver(
    input   wire            clk           ,//100M
    input   wire            rstn           ,//active high
    output  wire            cmos_scl      ,//cmos config sclk
    inout   wire            cmos_sda      ,
    //ov5640 port
    input   wire            cmos_pclk     ,//pixel clock
    input   wire            cmos_vsync    ,
    input   wire            cmos_href     ,
    output  wire            cmos_rstn    ,
    input   wire     [7:0]  cmos_data     ,

    output  wire            pclk          ,//pixel out clock
    output  wire            data_valid  ,//frame is active flag
    output  wire            cmos_clk_en   ,//cmos clock enable siagnl
    output  wire     [23:0] rgb_data  ,
    output  wire            vsync                  
    );
    
parameter RESET_CNT_MAX=5000000;
reg [31:0]reset_cnt_reg;
reg cmos_reset_reg;
wire            reg_conf_done;
//cmos chip system reset logical
wire rst_p;
assign cmos_rstn = cmos_reset_reg;
assign rst_p=~cmos_reset_reg;
always@(posedge clk or negedge rstn)begin
	if(rstn==1'b0)begin
		reset_cnt_reg<='d0;
		cmos_reset_reg<='b0;
	end
	else begin
		if(reset_cnt_reg<RESET_CNT_MAX)reset_cnt_reg<=reset_cnt_reg+'d1;
		else cmos_reset_reg<='b1;
	end
end

//cmos reg configuration
    cmos_reg_conf cmos_reg_conf_inst (
      .clk      (clk),
      .rst      (rst_p),
      .scl      (cmos_scl),
      .cfg_done (reg_conf_done),
      .sda      (cmos_sda)
    );
    
    //cmos data input capture convert
    coms_data_convert coms_data_convert_inst (
      .rst           (rst_p),
      .cmos_cfg_done (reg_conf_done),
      .cmos_pclk     (cmos_pclk),
      .cmos_vsync    (cmos_vsync),
      .cmos_href     (cmos_href),
      .cmos_data     (cmos_data),
      .pclk          (pclk),
      .cmos_dvld	 (data_valid),
      .cmos_clk_en   (cmos_clk_en),
      .rgb_data	     (rgb_data),
      .vsync         (vsync)
    );


endmodule
