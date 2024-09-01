module SIPO(clk,rst,si,so);
input clk,rst,si;
output [3:0]so;
reg [3:0]so;
reg qa,qb,qc,qd;

always @(posedge clk or posedge rst)
if(rst) begin
qa<=1'b0;
qb<=1'b0;
qc<=1'b0;
qd<=1'b0;
so<={qd,qc,qb,qa};
end
else begin
qa<=si;
qb<=qa;
qc<=qb;
qd<=qc;
so<={qd,qc,qb,qa};
end
endmodule

