module PISO(clk,rst,shift,si,da,db,dc,qa,qb,so);
input clk,rst,shift,si,da,db,dc;
output qa,qb,so;
reg qa,qb,so;
always @(posedge clk or posedge rst)
if(rst)begin
qa<=1'b0;
qb<=1'b0;
so<=1'b0;
end
else begin
if(~shift)
begin
qa<=da;
qb<=db;
so<=dc;
end
else if(shift)
begin
qa<=si;
qb<=qa;
so<=qb;
end
end
endmodule

