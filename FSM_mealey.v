module mealy_fsm(reset,clk,in_seq,out_seq);
input reset;
input clk;
input in_seq;
output out_seq;
//----------- Parameters defining State machine States-----
parameter SIZE = 3;
parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3=3'b011,S4=3'b100;
reg out_seq;
//------------ Internal Variables ----------------------------------
reg [SIZE-1:0] state; // Memory part of the FSM
reg [SIZE-1:0] next_state; 


always @ (state or in_seq)
begin : FSM_COMBO
next_state = 3'b000;
case(state)

S0 : if (in_seq == 1'b0) begin
next_state = S1;
out_seq = 1'b0;
end else begin
next_state = S3;
out_seq = 1'b0;
end

S1 : if (in_seq == 1'b0) begin
next_state = S2;
out_seq = 1'b0;
end else begin
next_state = S3;
out_seq = 1'b0;
end

S2 : if (in_seq== 1'b0) begin
next_state = S2; out_seq = 1'b0;
end else begin
next_state = S3; out_seq = 1'b1;
end

S3 : if (in_seq== 1'b0) begin
next_state = S1; out_seq = 1'b0;
end else begin
next_state = S4; out_seq = 1'b0;
end

S4 : if (in_seq== 1'b0) begin
next_state = S1; out_seq = 1'b1;
end else begin
next_state = S4; out_seq = 1'b0;
end
default:begin
next_state=S0;out_seq=1'b0;
end
endcase
end


always @ (posedge clk)
begin : FSM_SEQ
if (reset == 1'b1) state <= S0;
else state <= next_state;
end
endmodule

module mealy_fsm_test();
  reg clk,rst,x;
  wire z;
  mealy_fsm inst(rst,clk,x,z);
  
  always #5 clk=~clk;
  
  initial begin
    clk=1'b0;rst=1'b1;x=1;
	$display("Akshunn Trivedi-19BEC0038");
    $monitor($time,"x=%b;y=%b",x,z);
	@(posedge clk);
    #25 rst=1'b0;
    #10 x=1'b1;
    #10 x=1'b1;
    #10 x=1'b1;
    #10 x=1'b1;
    #10 x=1'b0;
    #10 x=1'b0;
    #10 x=1'b1;
    #10 x=1'b0;
    #10 x=1'b0;
    #10 x=1'b0;
    #10 x=1'b1;
    #100 $stop;
  end
endmodule
