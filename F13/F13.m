close all;clear all;clc;

%% SOMP
load N_simu_UE_F13.mat;
% CU
load NMSE_dB_CU_F13.mat;
figure;
plot(N_simu_UE,NMSE_dB,'-o');
hold on;

% UU
load NMSE_dB_DU_F13.mat;
hold on;
plot(N_simu_UE,NMSE_dB,'-o');

% DU
load NMSE_dB_UU_F13.mat;
hold on;
plot(N_simu_UE,NMSE_dB,'-o');
title('NMSE vs. the N of simultaneously-served UEs in SOMP Algorithm');
legend('d = 0','d = 0.25*lambda','d = 0.5*lambda');
xlabel('simultaneously-served UEs Number');
ylabel('NMSE [dB]');
xlim([1 20]);
ylim([-14.5 7]);

%% Proposed CE
load N_simu_UE_CE_F13.mat;
% CU
load NMSE_dB_CE_CU_F13.mat;
figure;
plot(N_simu_UE,NMSE_dB,'-s');
hold on;

% UU
load NMSE_dB_CE_UU_F13.mat;
hold on;
plot(N_simu_UE,NMSE_dB,'-s');

% DU
load NMSE_dB_CE_DU_F13.mat;
hold on;
plot(N_simu_UE,NMSE_dB,'-s');
title('NMSE vs. the N of simultaneously-served UEs in proposed CE');
legend('d = 0','d = 0.25*lambda','d = 0.5*lambda');
xlabel('simultaneously-served UEs Number');
ylabel('NMSE [dB]');
xlim([1 32]);
ylim([-15.5 3]);
