module half_adder(x,y,c,s);
input x,y;
output c,s;
xor X1(s,x,y);
and A1(c,x,y);
endmodule;

