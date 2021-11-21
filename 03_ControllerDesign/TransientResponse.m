%% Init
close all;
clear all;
clc;

%% First-Order
s = tf('s');
H = 50/(s+50)
step(H), grid on
H_info = stepinfo(H)

%% Second-Order
s = tf('s');
H = 25/(s^2+5*s+25)
step(H), grid on
H_info = stepinfo(H)

%% Additional Poles - case 1
pole = 15
numpole = 100*pole;
denpole = conv([1 pole],...
[1 4 100]);
Ta = tf (numpole,denpole);
num = 100;
den = [1 4 100];
T = tf(num,den);
step(Ta,'.',T,'-')
title('When pole is far away')
legend()

%% Additional Poles - case 2
pole = 4
numpole = 100*pole;
denpole = conv([1 pole],...
[1 4 100]);
Ta = tf (numpole,denpole);
num = 100;
den = [1 4 100];
T = tf(num,den);
step(Ta,'.',T,'-')
title('When the poles are close to each other')
legend()

%% Zeros Effect
deng=[1 2 9];
Ta=tf([1 3]*9/3,deng);
Tb=tf([1 5]*9/5,deng);
Tc=tf([1 10]*9/10,deng);
T=tf(9,deng);
step(T,Ta,Tb,Tc)
text(0.5,0.6,'no zero')
text(0.4,0.7,...
'zero at -10')
text(0.35,0.8,...
'zero at -5')
text(0.3,0.9,'zero at -3')
title('Effect of Zero')