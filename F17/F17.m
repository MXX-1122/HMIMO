clear all;close all;clc;
P_UL_Tx = 10:2:22;
load ASE_dB_B1_D_F17.mat;
figure;
plot(P_UL_Tx,ASE_dB,'-^');
hold on;

load ASE_dB_B2_D_F17.mat;
plot(P_UL_Tx,ASE_dB,'-o');
hold on;

load ASE_dB_B3_D_F17.mat;
plot(P_UL_Tx,ASE_dB,'-v');
hold on;

load ASE_dB_Binf_D_F17.mat;
plot(P_UL_Tx,ASE_dB,'--*');
hold on;

load ASE_dB_B1_U_F17.mat;
plot(P_UL_Tx,ASE_dB,'-^');
hold on;

load ASE_dB_B2_U_F17.mat;
plot(P_UL_Tx,ASE_dB,'-o');
hold on;

load ASE_dB_B3_U_F17.mat;
plot(P_UL_Tx,ASE_dB,'-v');
hold on;

load ASE_dB_B1_LA8_F17.mat;
plot(P_UL_Tx,ASE_dB,'-^');
hold on;

load ASE_dB_B2_LA8_F17.mat;
plot(P_UL_Tx,ASE_dB,'-o');
hold on;

load ASE_dB_B3_LA8_F17.mat;
plot(P_UL_Tx,ASE_dB,'-v');
hold on;
grid on;
xlabel('P_U_L_ _T_X [dBm]');
ylabel('ASE [bit/sec/Hz]');
title('ASE performance with different quantization bits')
legend('B = 1 for 0.5*lambda','B = 2 for 0.5*lambda','B = 3 for 0.5*lambda','B = inf for 0.5*lambda',...
    'B = 1 for 0.25*lambda','B = 2 for 0.25*lambda','B = 3 for 0.25*lambda',...
    'B = 1 for 0.125*lambda','B = 2 for 0.125*lambda','B = 3 for 0.125*lambda');