close all
clear
clc

theta=0.5;%theta=1;

for L=1:1919
     u(L)=L*cos(3.14*theta/180);
     v(L)=L*sin(3.14*theta/180);
   
end
uu_int=floor(u);
uu_fra=u-uu_int;

vv_int=floor(v);
vv_fra=v-vv_int;


uu_int=dec2hex(floor(u),3);
uu_fra=dec2hex((u-uu_int)*(2^16-1),4);

vv_int=dec2hex(floor(v),3);
vv_fra=v-vv_int;