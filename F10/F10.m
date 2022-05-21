clear all;close all;clc;
G = [1 2 4 5 8 10 20 25 40 50 100 200];
load Time_F10.mat;
figure;
plot(G,T);
xlabel('G_x = G_y');
ylabel('T_D_L + T_U_L');
legend('Total pilot overhead');

g = [1 2 4 5 8 10 20 25 40 50 100];
load N_complexed_valued_multiplication_F10.mat;
figure;
plot(g,N_cm);
%xlim([1 20]);
%ylim([1e8 1e12]);
xlabel('G_x = G_y');
ylabel('Multiplication for complexed-valued number');
legend('Uplink Computational Complexity');
