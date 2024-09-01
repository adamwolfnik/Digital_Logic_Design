module PISO_TB();
reg clk,rst,shift,si,pa,pb,pc;
wire qa,qb,so;
PISO p1(clk,rst,shift,si,pa,pb,pc,qa,qb,so);
always #10 clk=~clk;
initial begin
clk=1'b0;rst=1'b1;si=1'b0;shift=1'b0;
$display("Nikhil M Jain-19BEC0046");
$monitor($time,"clk=%b,rst=%b,shift=%b,si=%b,pa=%b,pb=%b,pc=%b,qa=%b,qb=%b,,so=%b",clk,rst,shift,si,pa,pb,pc,qa,qb,so);
  repeat(2)
 @(posedge clk)
rst=1'b0;{pa,pb,pc}=3'b101;
#40 shift=1'b1;
#40 shift=1'b0;
#40 $stop;
  end
endmodule