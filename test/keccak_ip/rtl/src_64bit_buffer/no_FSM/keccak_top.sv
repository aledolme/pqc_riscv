`include "/register_interface/typedef.svh"
`include "/register_interface/assign.svh"

module keccak_top
    	#(
	 parameter int unsigned AXI_ADDR_WIDTH = 32,
	 localparam int unsigned AXI_DATA_WIDTH = 32, 
	 parameter int unsigned AXI_ID_WIDTH,
	 parameter int unsigned AXI_USER_WIDTH
     	)
       (
	input logic clk_i,
	input logic rst_ni,
	input logic test_mode_i,

	AXI_BUS.Slave axi_slave
       );
   
	import keccak_reg_pkg::keccak_reg2hw_t;
	import keccak_reg_pkg::keccak_hw2reg_t;
	 		
	// Wiring signals between reg file and ip
	REG_BUS #(.ADDR_WIDTH(32), .DATA_WIDTH(32)) axi_to_regfile();
	keccak_reg2hw_t reg_file_to_ip;
	keccak_hw2reg_t ip_to_reg_file;

	axi_to_reg_intf #(
	   		.ADDR_WIDTH(AXI_ADDR_WIDTH),
			.DATA_WIDTH(AXI_DATA_WIDTH),
			.ID_WIDTH(AXI_ID_WIDTH),
			.USER_WIDTH(AXI_USER_WIDTH),
	 		.DECOUPLE_W(0)
	) i_axi2reg (
		.clk_i,
		.rst_ni,
		.testmode_i (test_mode_i),
		.in(axi_slave),
		.reg_o (axi_to_regfile)
	);

	// Convert the REG_BUS interface to the struct signals used by autogenerated register file 
	typedef logic [AXI_ADDR_WIDTH-1:0] addr_t;
	typedef logic [AXI_ADDR_WIDTH-1:0] data_t;
	typedef logic [AXI_ADDR_WIDTH/8-1:0] strb_t;
	`REG_BUS_TYPEDEF_REQ(reg_req_t, addr_t, data_t, strb_t);
  	`REG_BUS_TYPEDEF_RSP(reg_rsp_t, data_t);
	reg_req_t to_reg_file_req;
	reg_rsp_t from_reg_file_rsp;
	`REG_BUS_ASSIGN_TO_REQ(to_reg_file_req, axi_to_regfile);
	`REG_BUS_ASSIGN_FROM_RSP(axi_to_regfile, from_reg_file_rsp);

	keccak_reg_top #(
	.reg_req_t(reg_req_t),
	.reg_rsp_t(reg_rsp_t)
	) i_regfile (
		.clk_i,
		.rst_ni,
		.devmode_i(1'b1),
		// From the protocol converters to regfile
		.reg_req_i(to_reg_file_req),
		.reg_rsp_o(from_reg_file_rsp),
		
		// Signals to keccak IP
		.reg2hw(reg_file_to_ip),
		.hw2reg(ip_to_reg_file) 
	);

	// wiring signals between reg_file and ip
 	wire logic [63:0] Din_dummy;
	wire logic [63:0] Dout_dummy;
	
	assign Din_dummy = {reg_file_to_ip.din};
	 	
	keccak i_keccak (
		.clk(clk_i),
		.rst_n(rst_ni),
		.start(reg_file_to_ip.ctrl1.start.q),
		.din(Din_dummy),
		.din_valid(reg_file_to_ip.ctrl1.din_valid.q),
		.buffer_full(ip_to_reg_file.status.buffer_full.d),
		.last_block(reg_file_to_ip.ctrl1.last_block.q),
		.ready(ip_to_reg_file.status.ready.d),
		//.dout(ip_to_reg_file.dout),
		.dout(Dout_dummy),
		.dout_valid(ip_to_reg_file.status.dout_valid.d)
	);

	assign ip_to_reg_file.dout = Dout_dummy;

endmodule : keccak_top
