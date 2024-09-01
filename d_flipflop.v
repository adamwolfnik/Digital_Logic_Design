module d_flipflop(d,clk,rst,q);
input clk,rst,d;
output q;
reg q;
always @(posedge clk  or posedge rst)
begin 
if(rst)
q<=1'b0;
else begin
if(d==1'b0)
q<=1'b0;
else if(d==1'b1)
q<=1'b1;
end
end
endmodule


