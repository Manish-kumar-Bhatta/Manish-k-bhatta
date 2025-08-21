module vending_machine(
	input clk,
	input reset,
	input [1:0]coin,//00=0rs,01=5rs,10=10rs
	output reg dispense,
	output reg [1:0]change
	);
	parameter s0=2'b00;
	parameter s1=2'b01;
	parameter s2=2'b10;

	reg[1:0]state,next_state;

	always@(posedge clk) begin
		if(reset==1) begin
			state=0;
			next_state=0;
			dispense=0;
			change =2'b00;
		end
		else 
		state=next_state;

		case(state)
			s0://state 0:0rs
				if(coin==0)
				begin
					next_state=s0;
					dispense=0;
					change=2'b00;
				end
				else if(coin==2'b01)
				begin
					next_state=s1;
					dispense=0;
					change=2'b00;
				end
				else if(coin==2'b10)
				begin
					next_state=s2;
					dispense=0;
					change=2'b00;
				end

			s1://state 1 :5rs
				if(coin==0)
				begin
					next_state=s0;
					dispense=0;
					change=2'b01;
				end
				else if(coin==2'b01)
				begin
					next_state=s2;
					dispense=0;
					change=2'b00;
				end
				else if(coin==2'b10)
				begin
					next_state=s0;
					dispense=1;
					change=2'b00;
				end

			s2://state2 :10rs
				if(coin==0)
				begin
					next_state=s0;
					dispense=0;
					change=2'b10;
				end
				else if(coin==2'b01)
				begin
					next_state=s0;
					dispense=1;
					change=2'b00;
				end
				else if(coin==2'b10)
				begin
					next_state=s0;
					dispense=1;
					change=2'b01;
				end
		endcase
	end
endmodule


						
					
					

