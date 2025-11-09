input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[a4paper,10pt]{article}
\usepackage{../paper-en}
\begin{document}
etex

filenametemplate "%j-%1c.eps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";

beginfig(10) 
save u, p;
path p[];
u:=.5cm;

z.o=origin;
z.a=(0,1)*u;
z.b=z.a rotated 120;
z.c=z.a rotated -120;
z.shift=(5,0)*u;

p1=circle(z.a,(z.b-z.a)/2);
p2=circle(z.b,(z.b-z.a)/2);
p3=circle(z.c,(z.b-z.a)/2);
p4=z.a-(z.b-z.c)/2{-(z.b-z.c) zscaled (0,1)}..z.a+(z.b-z.c)/2{(z.b-z.c) zscaled (0,1)}..z.b+(z.a-z.c)/2{(z.a-z.c) zscaled (0,1)}..z.b-(z.a-z.c)/2{-(z.a-z.c) zscaled (0,1)}..z.c+(z.b-z.a)/2{(z.b-z.a) zscaled (0,1)}..z.c-(z.b-z.a)/2{-(z.b-z.a) zscaled (0,1)}..cycle;

p5=circle(z.o,z.a-z.b);
p6=circle(z.o+(z.b-z.a)/2,(z.b-z.a)/2);
p7=circle(z.o-(z.b-z.a)/2,(z.b-z.a)/2);

p8=z.a+(z.a-z.b)/2{(z.a-z.b) zscaled (0,1)}..z.a+(z.b-z.c)/2{(z.b-z.c) zscaled (0,1)}..z.b+(z.a-z.c)/2{(z.a-z.c) zscaled (0,1)}..z.b-(z.a-z.c)/2{-(z.a-z.c) zscaled (0,1)}..z.c+(z.b-z.a)/2{(z.b-z.a) zscaled (0,1)}..z.c+(z.c-z.b)/2{(z.c-z.b) zscaled (0,1)}..cycle;

p9=z.a+(z.a-z.b)/2{(z.a-z.b) zscaled (0,1)}..z.a+(z.a-z.c)/2{(z.a-z.c) zscaled (0,1)}..z.b+(z.b-z.c)/2{(z.b-z.c) zscaled (0,1)}..z.b+(z.b-z.a)/2{(z.b-z.a) zscaled (0,1)}..z.c+(z.c-z.a)/2{(z.c-z.a) zscaled (0,1)}..z.c+(z.c-z.b)/2{(z.c-z.b) zscaled (0,1)}..cycle;


draw p1 shifted (2*z.shift) dashed evenly;
draw p2 shifted (2*z.shift) dashed evenly;
draw p3 shifted (2*z.shift) dashed evenly;
draw p4 shifted (2*z.shift) penbold;

draw p5 shifted -z.shift penbold;
draw p6 shifted -z.shift dashed evenly;
draw p7 shifted -z.shift dashed evenly;


draw p8 shifted z.shift penbold;
draw p1 shifted z.shift dashed evenly;
draw p2 shifted z.shift dashed evenly;
draw p3 shifted z.shift dashed evenly;

draw p9 penbold;
draw p1 dashed evenly;
draw p2 dashed evenly;
draw p3 dashed evenly;

%label.lft (btex $p$ etex, z.p);

endfig;


beginfig(20);
save u, a, p;
u:=.6cm;
a:=88;
path p[];

z.o=origin;
z0=(0,-1)*u;
z2=z0 rotated 120;
z4=z0 rotated -120;

z1= whatever*(z0 rotated 60)=z0+whatever*(-z0 rotated -a);
z3=z1 rotated 120;
z5=z1 rotated -120;

z.r=(.5*(z1-z0)) rotated a;

p0=arc(z0+z.r rotated a,z0+z.r,z0+z.r rotated -a)
--
arc(z1-z.r rotated -a,z1-z.r rotated 60,z1-z.r rotated (120+a));

p1=p0--(p0 rotated 120)--(p0 rotated -120)--cycle;

p2=circle(z.o,z0+z.r);

p3=circle(.8*z1,abs(z0-.8*z1)-abs(z.r));
p4=circle(.6*z1,abs(z0-.6*z1)-abs(z.r));
p5=circle(.3*z1,abs(z0-.3*z1)-abs(z.r));

p6=circumcircle(z1+(0,.5)-.9*z.r rotated -a,z1+(0,.5)-.9*z.r rotated 60,z1+(0,.5)-.9*z.r rotated (120+a));


draw p1;

fill p2 withcolor 0;
fill p3 withcolor 0;
fill p4 rotated 120 withcolor 0;
fill p5 rotated -120 withcolor 0;
fill p6 rotated -120 withcolor 0;

endfig;

beginfig(30);
save u, k, p;
u:=1cm;
k:=2;
path p[];

z.b0=(0,0)*u;
z.b1=(1,0)*u;
z.b2=(2,0)*u;
z.b3=(3,0)*u;

z.c0=z.b0 +.5*(-1,k)*u;
z.c1=z.b2 +.5*(-1,k)*u;
z.c2=z.b3 +.5*(1,k)*u;

z.o=z.b0+whatever*(-1,k)=z.b3+whatever*(1,k);

p1=z.b0{k,1}..{k,-1}z.b1..{k,1}z.b2..{k,-1}z.b3;
p2=z.b0{k,1}..{k,-1}z.b3;
p3=z.c0{k,1}..{k,-1}z.c1--z.c1{k,1}..{k,-1}z.c2;
p4=z.c0{k,1}..{k,-1}z.c2;


draw p1;
draw p2;
draw p3;
draw p4;
draw z.c0--z.o--z.c2;

z.xx=point .35 of p4;
p5=z.o--z.xx;
z.x= p3 intersectionpoint p5;
draw p5 dashed evenly;

dOt z.xx,z.x;


label.bot(btex $\beta$ etex, point 1.9 of p1);
label.top(btex $\alpha$ etex, point .75 of p2);
label.bot(btex $\beta'$ etex, point 2.2 of p3);
label.top(btex $\alpha'$ etex, point .75 of p4);
label.top(btex $\rho(x)$ etex, z.xx);
label.llft(btex $x$ etex, z.x);
endfig;
end
