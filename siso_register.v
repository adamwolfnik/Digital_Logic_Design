module siso_beh(clk,si,rst,so);
  input clk,rst,si;
  output so;
  reg qa,qb,qc,so;

  always @(posedge clk or posedge rst)
  if(rst) begin
    qa<=1'b0;
    qb<=1'b0;
    qc<=1'b0;
    so<=1'b0;
  end
else begin
  qa<=si;
  qb<=qa;
  qc<=qb;
  so<=qc;
end
endmodule
