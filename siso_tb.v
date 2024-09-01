module siso_test();
  reg si,clk,rst;
  wire so;

  siso_beh SISO_INST(clk,si,rst,so);
  always #10 clk=~clk;

  initial begin
    clk=1'b0;si=1'b0;rst=1'b1;
    $display("Nikhil M Jain-19BEC0046");
    repeat(2)
    @(posedge clk);
    rst=1'b0;si=1'b1;
    @(posedge clk) si=1'b0;
    @(posedge clk) si=1'b1;
    @(posedge clk) si=1'b0;
    repeat(5)
    @(posedge clk);
    $stop;
  end
endmodule