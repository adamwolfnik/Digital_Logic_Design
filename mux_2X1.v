module mux2X1(s,i0,i1,y);
input i0,i1;
input s;
output y;
reg y;
always @(s or i0 or i1)
case(s)
1'b0:y=i0;
1'b1:y=i1;
endcase
endmodule
