%% Init
close all;
clear all;
clc;

%% Robustness Figure 2.
H = tf([1 8 15],[1 -6 8])
nyquist(H)