`include "vending_machine.v"
module tb;
	reg clk;
	reg reset;
	reg [1:0]coin;
	wire dispense;
	wire [1:0]change;

	vending_machine dut(clk,reset,coin,dispense,change);

	initial begin
		clk=0;
		reset=1;
		#10 reset=0;
		coin=1;
		#15 coin=1;
		#20 coin=1;
		#25 coin=1;
		#35 $finish;
	end
	always #5 clk=~clk;
endmodule
