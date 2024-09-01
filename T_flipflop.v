module t_flipflop(t,clk,rst,q);
input clk,rst,t;
output q;
reg q;
always @(posedge clk  or posedge rst)
begin 
if(rst)
q<=1'b0;
else begin
if(t==1'b0)
q<=q;
else if(t==1'b1)
q<=~q;
end
end
endmodule