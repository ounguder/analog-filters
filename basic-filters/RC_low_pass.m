clc;clear all;close all
%% Values for the Circuit Elements
R1= 1e3 ;
C1= 1e-6;

%% Transfer Function and System
num = [1/(R1*C1)] ;
denom=[1,1/(R1*C1)];
filter = tf(num,denom);

%% Bode Plot Options
opts = bodeoptions;
opts.Title.FontSize = 15;
opts.Title.Color = 'blue';
opts.Grid = 'on';
opts.FreqScale = 'log';
opts.Title.String = 'RC Low Pass Filter For R = 1kOhm C = 1\muF';

%% Plotting the Bode Plot
figure
h = bodeplot(filter,opts);
 
%% Plotting the Pole-Zero Plot
figure
pzplot(filter)