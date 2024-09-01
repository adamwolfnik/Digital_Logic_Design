module fs_hs(x,y,z,d,b);
  input x,y,z;
  output d,b;
  
  hs_gl HS1(x,y,d_hs,b_hs);
  hs_gl HS2(d_hs,z,d,b_hs2);
  or O1(b,b_hs2,b_hs);
endmodule
