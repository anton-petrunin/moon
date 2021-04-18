input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../moon}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";



beginfig(32);
save u;
u:=.7cm;

save p; path p[];

z.o1=(0,0)*u;
x.r1=.6*u;
p1=circle(z.o1,x.r1);
draw p1;

z.o2=(4,0)*u;
x.r2=.7*u;
p2=circle(z.o2,x.r2);
draw p2;

z.o3=(8,0)*u;
x.r3=1.1*u;
p3=circle(z.o3,x.r3);
draw p3;

z.d1=(1,1);
z.d2=(1,-1);
z.d3=(1,0);
z.d4=(-1,0);
z.d5=(-.8,-.3);
z.d6=(-1,.5);
z.pp=(10,.2)*u;
z.qq=(4,-3)*u;

z.base=(-2,0)*u;

p0=
(directionpoint z.d1 of p1){z.d1}..
(2,-1)*u..
(1.5,-3)*u..
(3,-3)*u..
(2.2,-1)*u..
(directionpoint z.d2 of p2){z.d2}..
z.qq..
(directionpoint z.d3 of p3){z.d3}..
z.pp..
(directionpoint z.d4 of p3){z.d4}..
(directionpoint z.d5 of p2){z.d5}..
(directionpoint z.d6 of p1){z.d6}..
z.base--
z.base..
cycle;

p4=circumcircle(point 8.2 of p0,point 8 of p0,point 7.8 of p0);

draw p0;
draw p4;
z.p1=directionpoint z.d1 of p1;
z.p2=directionpoint z.d2 of p2;
z.p3=directionpoint z.d3 of p3;
z.q1=directionpoint z.d6 of p1;
z.q2=directionpoint z.d5 of p2;
z.q3=directionpoint z.d4 of p3;

dOt z.p1, z.p2, z.p3, z.q1, z.q2, z.q3, z.pp, z.base;


label(btex $\sigma_1$ etex, z.o1);
label(btex $\sigma_2$ etex, z.o2);
whitelabel(btex $\hat\sigma_3$ etex, z.o3-(x.r3,0));
whitelabel(btex $\check\sigma_3$ etex, z.o3+(x.r3,0));
whitelabel(btex $\sigma_\infty$ etex, point 2 of p4);
label.lft(btex $p_0$ etex, z.base);
label.lrt(btex $p_1$ etex, z.p1);
label.llft(btex $p_2$ etex, z.p2);
label.bot(btex $p_3$ etex, z.p3);
label.rt(btex $p_\infty$ etex, z.pp);
label.urt(btex $q_1$ etex, z.q1);
label.top(btex $q_2$ etex, z.q2);
label.top(btex $q_3$ etex, z.q3);
label.top(btex $F$ etex, (z.p2+z.p3+z.qq)/3);

endfig;

beginfig(62);
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

draw p1;

fill p2 withcolor 0;

endfig;

beginfig(63);
save u;
u:=1cm;

save p; path p[];
p0=(0,0)*u..(0,1)*u..(1,0)*u..(0,-1)*u..cycle;

draw circumcircle(point 2 of p0,point 2.2 of p0,point 1.8 of p0);
draw circumcircle(point 0 of p0,point 0.2 of p0,point 3.8 of p0);
draw circumcircle(point .9 of p0,point 1.1 of p0,point 1.3 of p0);
draw circumcircle(point 3.1 of p0,point 2.7 of p0,point 2.9 of p0);

draw p0 penbold;

dOt point 0 of p0,point 1.1 of p0,point 2 of p0,point 2.9 of p0;
endfig;

beginfig(64);
save u;
u:=1.4cm;

z.p1=(0,0)*u;
z.q1=(.2,2)*u;
z.s=(-.9,.8)*u;
z.p2=(1,1)*u;
z.ss=(-1.7,1)*u;

save p; path p[];
p0=z.p1..tension 1.3..z.q1..z.s..cycle;
p1=z.p1{direction 0 of p0}..z.p2..z.q1{direction 1 of p0};
p2= z.p2{direction 1 of p1}..tension 1.6..z.s{1,-2}..tension 1.3..cycle;

draw p0;
draw p1 penbold;
draw p2;

z.x= p0 intersectionpoint subpath (0,1) of p2;
z.y= p0 intersectionpoint subpath (1,2) of p2;

dOt z.p1,z.q1,z.s,z.p2, z.x, z.y;

label.llft(btex $y$ etex, z.x);
label.ulft(btex $x$ etex, z.y);
label.lrt(btex $p_1$ etex, z.p1);
label.urt(btex $q_1$ etex, z.q1);
label.rt(btex $p_2$ etex, z.p2);
label.llft(btex $s$ etex, z.s);
label.urt(btex $\gamma_1$ etex, point 1.5 of p1);
label.ulft(btex $\hat\sigma_1$ etex, point 1.5 of p0);
whitelabel(btex $\check\sigma_1$ etex, point .6 of p0);
label.lrt(btex $\sigma_2$ etex, point .7 of p2);
endfig;

beginfig(65);
save u;
u:=1cm;

save p; path p[];
p0= circle(origin,1*u);

z.p1=point 0 of p0;
z.p2=point .5 of p0;
z.p3=point .9 of p0;
z.p4=point 1.3 of p0;
z.p5=point 1.9 of p0;
z.p6=point 2.5 of p0;
z.p7=point 3.1 of p0;
z.p8=point 3.6 of p0;

p1= z.p1{1,0}..z.p2..z.p3{0,1}..z.p4..z.p5{-1,0}..z.p6..z.p7{0,-1}..z.p8..cycle;

draw p0;
draw p1 penbold;

dOt z.p1, z.p2, z.p3, z.p4, z.p5, z.p6, z.p7, z.p8;

label.lrt(btex $p_1$ etex, z.p1);
label.urt(btex $p_2$ etex, z.p2);
label.lft(btex $\dots$ etex rotated (angle (direction  1.5 of p0)), point 1.5 of p0);
label.lrt(btex $p_{2{\cdot} n}$ etex, z.p8);
endfig;

beginfig(305);
save u,p,t;
path p[];
u:=1cm;

z[0]=(0,1)*u;
z.k=(1-.01,.08);

for i=1 step 1 until 1000:
z[i]=z[i-1] zscaled z.k;
endfor

p0=
for i=0 step 1 until 1000:
z[i]..
endfor
origin;

p1=subpath(20,220) of p0 ... reverse( subpath(0,200) of p0) rotated 90...cycle;

draw p1;

draw circle((-1,0)*u,u) penhair;

endfig;

end
