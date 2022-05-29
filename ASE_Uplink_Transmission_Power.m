close all;clear all;clc;
P_UL_Tx = 10:2:22; % uplink transmission power
load ASE_dB_without_RIS_F15.mat; % ASE with no reconfigurable intelligent surface
figure;
plot(P_UL_Tx,NMSE_dB,'--^');
hold on;

load ASE_dB_CE_D_F15.mat; % ASE with critical spacing in channel estimation
plot(P_UL_Tx,NMSE_dB,'-v');
hold on;

load ASE_dB_CE_U_F15.mat; % ASE with ultra-dense spacing d = 0.25*lambda in channel estimation
plot(P_UL_Tx,NMSE_dB,'-v');
hold on;

load ASE_dB_CE_LA8_F15.mat; % ASE with ultra-dense spacing d = 0.125*lambda in channel estimation
plot(P_UL_Tx,NMSE_dB,'-v');
hold on;

load ASE_dB_CE_C_F15.mat; % ASE with continous metasurface spacing in channel estimation
plot(P_UL_Tx,NMSE_dB,'-v');
hold on;

load ASE_dB_welldeter_D_F15.mat; % ASE with critical spacing in well-determied least squre estimator
plot(P_UL_Tx,NMSE_dB,'-o')
hold on;

load ASE_dB_welldeter_U_F15.mat; % ASE with ultra-dense spacing d = 0.25*lambda in least squre estimator
plot(P_UL_Tx,NMSE_dB,'-o')
hold on;

load ASE_dB_welldeter_LA8_F15.mat; % ASE with ultra-dense spacing d = 0.125*lambda in least squre estimator
plot(P_UL_Tx,NMSE_dB,'-o');
hold on;

load ASE_dB_welldeter_C_F15.mat; % ASE with continous metasurface spacing in least squre estimator
plot(P_UL_Tx,NMSE_dB,'-o');
hold on;

load ASE_dB_Perfect_CSI_D_F15.mat; % ASE with critical spacing in perfect channel state information
plot(P_UL_Tx,NMSE_dB,'--*');
hold on;

load ASE_dB_Perfect_CSI_U_F15.mat; % ASE with ultra-dense spacing d = 0.25*lambda in channel state information
plot(P_UL_Tx,NMSE_dB,'--*');
hold on;

load ASE_dB_Perfect_CSI_LA8_F15.mat; % ASE with ultra-dense spacing d = 0.125*lambda in channel state information
plot(P_UL_Tx,NMSE_dB,'--*');
hold on;

load ASE_dB_Perfect_CSI_C_F15.mat; % ASE with continous metasurface spacing in channel state information
plot(P_UL_Tx,NMSE_dB,'--*');
grid on;
xlabel('P_U_L_ _T_X [dBm]');
ylabel('ASE [bit/sec/Hz]');
title('Comparison of ASE performance')
legend('without RIS','CE 0.5*lambda','CE 0.25*lambda','CE 0.125*lambda', 'CE CMS',...
    'Well determined LS 0.5*lambda','Well determined LS 0.25*lambda','Well determined LS 0.125*lambda',...
    'Well determined LS CMS','Perfect CSI 0.5*lambda','Perfect CSI 0.25*lambda','Perfect CSI 0.125*lambda',...
    'Perfect CSI CMS');
