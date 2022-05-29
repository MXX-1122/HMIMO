clear all;close all;clc;
Np_IRS_set = 10:20:110; % range for the number of uplink pilot overhead
load NMSE_dB_C_U_Np10to110.mat; % NMSE data for continous surface under uniform subcarrier allocations
plot(Np_IRS_set, NMSE_dB,'-.om');
hold on;

load NMSE_dB_U_U_Np10to110.mat; % NMSE data for ultra-dense surface under uniform subcarrier allocations
plot(Np_IRS_set, NMSE_dB,'-.sb'); 
hold on;

load NMSE_dB_D_U_Np10to110.mat; % NMSE data for critical spacing surface under uniform subcarrier allocations
plot(Np_IRS_set, NMSE_dB,'-.dk'); 
hold on;

load NMSE_dB_C_B_Np10to110.mat; % NMSE data for continous surface under block subcarrier allocations
plot(Np_IRS_set, NMSE_dB,'--om');
hold on;

load NMSE_dB_U_B_Np10to110.mat; % NMSE data for ultra-dense surface under block subcarrier allocations
plot(Np_IRS_set, NMSE_dB,'--sb');
hold on;

load NMSE_dB_D_B_Np10to110.mat; % NMSE data for critical spacing surface under block subcarrier allocations
plot(Np_IRS_set, NMSE_dB,'--dk');
hold on;

load NMSE_dB_C_R_Np10to110.mat; % NMSE data for continous surface under random subcarrier allocations
plot(Np_IRS_set, NMSE_dB,'-om');
hold on;

load NMSE_dB_U_R_Np10to110.mat; % NMSE data for ultra-dense surface under random subcarrier allocations
plot(Np_IRS_set, NMSE_dB,'-sb');
hold on;

load NMSE_dB_D_R_Np10to110.mat; % NMSE data for critical spacing surface under random subcarrier allocations
plot(Np_IRS_set, NMSE_dB,'-dk');

ylim([-25 5]);
grid on;
