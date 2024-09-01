module FA_ha(x,y,z,s,c);
input x,y,z;
output s,c;
wire s_ha1,c_ha1,c_ha2;
half_adder HA1(.x(x),.y(y),.s(s_ha1),.c(c_ha1));
half_adder HA2(.x(s_ha1),.y(z),.s(s),.c(c_ha2));
or O1(c,c_ha1,c_ha2);
endmodule

