module Full_adder(x,y,z,s,c);
input x,y,z;
output c,s;
wire w1,w2,w3;
//s=x^y^z
xor X1(s,x,y,z);
//c
xor X2(w1,x,y);
and A1(w2,w1,z);
and A2(w3,x,y);
or  O1(c,w2,w3);
endmodule;
