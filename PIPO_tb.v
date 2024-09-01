module PIPO_tb;
reg pa,pb,pc,pd,clk,rst;
wire qa,qb,qc,qd;
PIPO p1(clk,rst,pa,pb,pc,pd,qa,qb,qc,qd);
always #10 clk=~clk;
initial  begin
clk=1'b0; rst=1'b1;
$display("Nikhil M Jain-19BEC0046");
$monitor($time,"clk=%b,rst=%b,pa=%b,qa=%b,pb=%b,qb=%b,pc=%b,qc=%b,pd=%b,qd=%b",clk,rst,pa,qa,pb,qb,pc,qc,pd,qd);
 repeat(2)
    @(posedge clk);
    rst=1'b0;{pa,pb,pc,pd}=4'b0000;
    #20{pa,pb,pc,pd}=4'b0001;
    #20 {pa,pb,pc,pd}=4'b0010;
    #20 {pa,pb,pc,pd}=4'b0100;   
    #20 {pa,pb,pc,pd}=4'b0101;
    #20 {pa,pb,pc,pd}=4'b0110;
	#20 {pa,pb,pc,pd}=4'b0111;
	#20 {pa,pb,pc,pd}=4'b1001;
	#20 {pa,pb,pc,pd}=4'b1011;
	#20 {pa,pb,pc,pd}=4'b1111;
    @(posedge clk);
    $stop;
  end
endmodule
