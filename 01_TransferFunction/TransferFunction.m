%% Initialization
clc
clear all
close all

%% Poles-Zeros
H1 = tf([5 3],[1 4 10])
pzmap(1)
grid on

%% Step Response
s = tf('s');
H2 = 1/(s^2+5*s+25)
step(H2), grid on

%% Stability - BIBO
sys = tf([9],[1, 2, 9])
P = pole(sys)
TF = isstable(sys)

%% Frequency Response

n = [9];
d = [1 2 9];
w = logspace(-1,2);

[h,w] = freqs(n,d,w)
[in,id] = invfreqs(h, w, 'complex' , 0, 2)

%% Bode plot

n = [9];
d = [1 2 9];

H = tf(n,[1 2 9])
bode(H)