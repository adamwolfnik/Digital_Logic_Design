module JK_flipflop(j,k,clk,rst,q);
input j,k,clk,rst;
output q;
reg q;
always @(posedge clk or posedge rst)
begin
if(rst)
q<=1'b0;
else begin
if (j==1'b0 && k==1'b0)
q<=q;
else if (j==1'b0 && k==1'b1)
q<=1'b0;
else if (j==1'b1 && k==1'b0)
q<=1'b1;
else if (j==1'b1 && k==1'b1)
q<=~q;
end
end
endmodule




