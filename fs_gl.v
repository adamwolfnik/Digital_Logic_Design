module fs_gl(x,y,z,d,b);
input x,y,z;
output d,b;
wire x1,w1,w2,w3;
//d
xor X1(d,x,y,z);
//b
not N1(x1,x);
and A1(w1,x1,y);
and A2(w2,x1,z);
and A3(w3,y,z);
or O1(b,w1,w2,w3);
endmodule
