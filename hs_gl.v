module hs_gl(x,y,d,b);
input x,y;
output d,b;
wire x1;
not N1(x1,x);
xor X1(d,x,y);
and A1(b,x1,y);
endmodule