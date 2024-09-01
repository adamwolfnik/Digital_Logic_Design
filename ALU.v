module ALU(A,B,S,Y);
input [15:0]A,B;
input [2:0]S;
output [15:0]Y;
reg [15:0]Y;
assign A=16'h00FF;
assign B=16'hFF00;
always @(S or A or B)
begin
case(S)
3'b000:Y=16'b0;
3'b001:assign Y=A&B;
3'b010:assign Y=A|B;
3'b011:assign Y=A^B;
3'b100:assign Y=~A;
3'b101:Y=A-B;
3'b110:Y=A+B;
3'b111:assign Y=16'hFFFF;
endcase
end
endmodule
