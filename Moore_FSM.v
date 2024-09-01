module moore_fsm(reset,clk,in_seq,out_seq);
input reset;
input clk;
input in_seq;
output out_seq;
//----------- Parameters defining State machine States-----
parameter SIZE = 3;
parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4=3'b100, S5=3'b101, S6=3'b110;
reg out_seq;

reg [SIZE-1:0] state; 
reg [SIZE-1:0] next_state;

always @ (state or in_seq)
begin : FSM_COMBO
next_state = 2'b00;
case(state)

S0 : begin
out_seq = 1'b0;
if (in_seq == 1'b0)
next_state = S1;
else
next_state = S4;
end

S1 : begin
out_seq = 1'b0;
if (in_seq == 1'b0)
next_state = S2;
else
next_state = S0;
end

S2 : begin
out_seq = 1'b0;
if (in_seq == 1'b0)
next_state = S2;
else
next_state = S3;
end

S3 : begin
out_seq = 1'b1;
if (in_seq == 1'b0)
next_state = S1;
else
next_state = S5;
end

S4 : begin
out_seq = 1'b0;
if (in_seq == 1'b0)
next_state = S0;
else
next_state = S5;
end

S5 : begin
out_seq = 1'b0;
if (in_seq == 1'b0)
next_state = S6;
else
next_state = S5;
end

S6 : begin
out_seq = 1'b1;
if (in_seq == 1'b0)
next_state = S2;
else
next_state = S4;
end

default : begin
next_state = S0; out_seq = 1'b0;
end
endcase
end

always @ (posedge clk)
begin : FSM_SEQ
if (reset == 1'b1) state <= S0;
else state <= next_state;
end
endmodule
module moore_fsm_test();
  reg clk,rst,x;
  wire z;
  moore_fsm inst(rst,clk,x,z);
  
always #5 clk=~clk;
initial begin
   clk=1'b0;rst=1'b1;x=1'b1;
   $display("Akshunn Trivedi-19BEC0038");
   $monitor($time,"x=%b;y=%b",x,z);
   @(posedge clk);
    #25 rst=1'b0;
    #10 x=1'b1;
    #10 x=1'b1;
    #10 x=1'b0;
    #10 x=1'b0;
    #10 x=1'b1;
    #10 x=1'b0;
    #10 x=1'b1;
    #10 x=1'b1;
    #10 x=1'b0;
    #10 x=1'b1;
    #10 x=1'b1;
    #100 $stop;
  end
endmodule