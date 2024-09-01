module majoritycheck(Q,O);
input [2:0]Q;
output O;
wire w1,w2,w3,w4,w5;
nand n1(w1,Q[2],Q[0]);
nand n2(w2,Q[2],Q[1]);
nand n3(w4,Q[1],Q[0]);
nand n4(w3,w1,w2);
nand n5(w5,w3,w3);
nand n6(O,w4,w5);
endmodule


