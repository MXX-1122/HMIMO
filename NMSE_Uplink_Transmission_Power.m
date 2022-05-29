close all;clear all;clc;
P_UL_Tx = 10:2:22; % uplink transmission power
load NMSE_dB_NP10_F14.mat; % NMSE when the number of uplink pilot overhead = 10
figure;
plot(P_UL_Tx, NMSE_dB,'-d');
hold on;

load NMSE_dB_NP40_F14.mat; % NMSE when the number of uplink pilot overhead = 40
plot(P_UL_Tx, NMSE_dB,'-s');
hold on;

load NMSE_dB_NP80_F14.mat; % NMSE when the number of uplink pilot overhead = 80
plot(P_UL_Tx, NMSE_dB,'-o');
hold on;

load NMSE_dB_NP1600_F14.mat; % NMSE when the number of uplink pilot overhead = 1600 (least square estimator)
plot(P_UL_Tx, NMSE_dB,'-^');
hold on;

load NMSE_dB_openloop_F14.mat; % NMSE when random pilot signal in open-loop
plot(P_UL_Tx, NMSE_dB,'-v');
grid on;
xlabel('P_U_L_ _T_X [dBm]');
ylabel('NMSE [dB]');
title('NMSE of different CE vs. uplink transmission power')
legend('Np = 10','Np = 40','NP = 80','Np = 1600', 'Open-loop with random pilot singal');
