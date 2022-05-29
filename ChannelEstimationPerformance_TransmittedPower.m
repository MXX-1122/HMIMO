clear all;close all;clc;
P_DL_TX = [10 12 14 16 19 22 26 31 36 43 50]; % downlink transmission power testing value
figure;

%% Gx = Gy = 2
subplot(1,2,1);
% critical spacing: d = 0.5*lambda
load Probility_facilure1_F11.mat; % probility of facilure from training file
plot(P_DL_TX, Probility_facilure1); % probility of facilure vs. downlink transmission power when G = 2
hold on;
% ultra-dense spacing 1: d = 0.25*lambda
load Probility_facilure2_F11.mat;
plot(P_DL_TX, Probility_facilure2);
hold on;
% ultra-dense spacing 2: d = 0.125*lambda
load Probility_facilure3_F11.mat;
plot(P_DL_TX, Probility_facilure3);
hold on;
% continous metasurface spacing: d = 0
load Probility_facilure4_F11.mat;
plot(P_DL_TX, Probility_facilure4);
title('G_x = G_y = 2');
xlabel('P_D_L_ _T_X');
ylabel('Probability of failure');
legend('d = 0.5*lambda','d = 0.25*lambda','d = 0.125*lambda','d = 0 (CMS)');

%% Gx = Gy = 4
subplot(1,2,2);
% critical spacing: d = 0.5*lambda
load Probility_facilure11_F11.mat;
plot(P_DL_TX, Probility_facilure11); % probility of facilure vs. downlink transmission power when G = 4
hold on;
% ultra-dense spacing 1: d = 0.25*lambda
load Probility_facilure22_F11.mat;
plot(P_DL_TX, Probility_facilure22);
hold on;
% ultra-dense spacing 2: d = 0.125*lambda
load Probility_facilure33_F11.mat;
plot(P_DL_TX, Probility_facilure33);
hold on;
% continous metasurface spacing: d = 0
load Probility_facilure44_F11.mat;
plot(P_DL_TX, Probility_facilure44);
title('G_x = G_y = 4');
xlabel('P_D_L_ _T_X');
ylabel('Probability of failure');
legend('d = 0.5*lambda','d = 0.25*lambda','d = 0.125*lambda','d = 0 (CMS)');
