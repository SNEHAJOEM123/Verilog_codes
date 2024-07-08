module q1_mfg_3(f,a,b,x,y);
output f;
input a,b,x,y;
not(p,a);
not(q,b);
not(v,x);
and(s,x,p,q);
and(t,v,a,b);
xor(r,a,b);
and(u,y,r);
or(f,s,t,u);
endmodule