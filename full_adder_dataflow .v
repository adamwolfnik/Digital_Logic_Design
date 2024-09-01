module full_adder_dataflow(x,y,z,s,c);
input x,y,z;
output c,s;
assign s=x^y^z;
assign c=(z&(x^y))|(x&y);
endmodule;

