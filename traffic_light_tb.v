`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:57:52 05/07/2026
// Design Name:   traffic_light
// Module Name:   /home/ise/Documents/verilog/trafficlight/traffic_light_tb.v
// Project Name:  trafficlight
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: traffic_light
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module traffic_light_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire red;
	wire yellow;
	wire green;

	// Instantiate the Unit Under Test (UUT)
	traffic_light uut (
		.clk(clk), 
		.rst(rst),
		
		.red(red), 
		.yellow(yellow), 
		.green(green)
	);
//clock generation
always #5 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		
		#10;
		rst=0;

		#200;
		
		$finish;
		
end

initial begin

$monitor("Time=%0t | red=%b yellow=%b green=%b",
        $time, red,yellow,green);

	end
      
endmodule

