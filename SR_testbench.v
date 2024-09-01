module SR_testbenc;
reg s,r,clk,rst;
wire q,qbar;
SRflipflop sr1(s,r,clk,rst,q,qbar);
always #5  clk=~clk;
initial begin
s=1'b0; r=1'b0; clk=1'b0; rst=1'b1;
$monitor($time,"s=%b,r=%b,clk=%b,rst=%b,q=%b,qbar=%b",s,r,clk,rst,q,qbar);
$display("Nikhil M Jain-19BEC0046");
#20 rst=1'b0;
@(posedge clk) s=1'b0;r=1'b1;
repeat(3)
@(posedge clk)s=1'b0; r=1'b0;
@(posedge clk) s=1'b1; r=1'b0;
@(posedge clk) s=1'b1; r=1'b1;
repeat(2)
@(posedge clk)
#20 $finish;
end
endmodule


