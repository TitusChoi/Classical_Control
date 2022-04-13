%% Init
close all;
clear all;
clc;

%% Ex1 - Type 0
H = tf([1],[1 2 3])
nyquist(H)

%% Ex2 - Type 1
H = tf([40],[3 2 3 0])
nyquist(H)