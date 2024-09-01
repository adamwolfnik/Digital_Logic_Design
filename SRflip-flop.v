module SRflipflop(s,r,clk,rst,q,qbar);
input s,r,clk,rst;
output q,qbar;
reg q;
wire qbar;
always @(posedge clk or posedge rst)
begin
if(rst)
q<=1'b0;
else begin
if (s==1'b0 && r==1'b0)
q<=q;
else if (s==1'b0 && r==1'b1)
q<=1'b0;
else if (s==1'b1 && r==1'b0)
q<=1'b1;
else 
q<=1'bz;
end
end
assign qbar=~q;
endmodule