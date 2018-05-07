%Program name: Project1_351
%Authored by: Michael Gerrard Guerrero
%Last Modified: 02.17.17

s=load('ecg.mat');
N=360;
n=360/1026;
nt=0:n:N-1;
figure
plot(nt,noise_ecg)