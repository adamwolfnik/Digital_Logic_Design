module mux_2X1_tb;
reg s;
reg i0,i1;
wire y;
mux2X1 m(s,i0,i1,y);
initial begin
$monitor($time,"s=%b,i0=%b,i1=%b,y=%b",s,i0,i1,y);
s=1'b0; i0=1'b0; i1=1'b0;
#10 s=1'b0; i0=1'b0; i1=1'b1;
#10 s=1'b0; i0=1'b1; i1=1'b0;
#10 s=1'b0; i0=1'b1; i1=1'b1;
#10 s=1'b1; i0=1'b0; i1=1'b0;
#10 s=1'b1; i0=1'b0; i1=1'b1;
#10 s=1'b1; i0=1'b1; i1=1'b1;
#10 s=1'b1; i0=1'b1; i1=1'b1;
#10 $display("Akshunn Trivedi-19BEC0038");
$stop;
end
endmodule
