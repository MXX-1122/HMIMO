clear all;close all;clc;
Np_IRS_set = 10:20:110;
load NMSE_dB_C_U_Np10to110.mat;
plot(Np_IRS_set, NMSE_dB,'-.om');
hold on;

load NMSE_dB_U_U_Np10to110.mat;
plot(Np_IRS_set, NMSE_dB,'-.sb');
hold on;

load NMSE_dB_D_U_Np10to110.mat;
plot(Np_IRS_set, NMSE_dB,'-.dk');
hold on;

load NMSE_dB_C_B_Np10to110.mat;
plot(Np_IRS_set, NMSE_dB,'--om');
hold on;

load NMSE_dB_U_B_Np10to110.mat;
plot(Np_IRS_set, NMSE_dB,'--sb');
hold on;

load NMSE_dB_D_B_Np10to110.mat;
plot(Np_IRS_set, NMSE_dB,'--dk');
hold on;

load NMSE_dB_C_R_Np10to110.mat;
plot(Np_IRS_set, NMSE_dB,'-om');
hold on;

load NMSE_dB_U_R_Np10to110.mat;
plot(Np_IRS_set, NMSE_dB,'-sb');
hold on;

load NMSE_dB_D_R_Np10to110.mat;
plot(Np_IRS_set, NMSE_dB,'-dk');

ylim([-25 5]);
grid on;