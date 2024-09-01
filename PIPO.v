module PIPO(clk,rst,pa,pb,pc,pd,qa,qb,qc,qd);
input clk,rst,pa,pb,pc,pd;
output qa,qb,qc,qd;
reg qa,qb,qc,qd;
always @(posedge clk or posedge rst)
if(rst) begin
qa<=1'b0;
qb<=1'b0;
qc<=1'b0;
qd<=1'b0;
end
else begin
qa<=pa;
qb<=pb;
qc<=pc;
qd<=pd;
end
endmodule
