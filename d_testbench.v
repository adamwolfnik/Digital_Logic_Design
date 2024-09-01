module d_testbench;
reg clk,rst,d;
wire q;
d_flipflop d1(d,clk,rst,q);
always #5 clk=~clk;
initial begin
$monitor($time,"clk=%b,rst=%b,d=%b,q=%b",clk,rst,d,q);
$display("Nikhil M Jain-19BEC0046");
clk=1'b0; rst=1'b1; 
#20 rst=1'b0;
@(posedge clk)d=1'b0;
#10 d=1'b1;
repeat(2)
@(posedge clk)
#10 $finish;
end
endmodule