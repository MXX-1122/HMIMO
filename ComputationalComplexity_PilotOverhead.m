clear all;close all;clc;
%% Total pilot overhead
Gx_y = [1 2 4 5 8 10 20 25 40 50 100 200]; % x-axis for both the azimuthal and elevation groupings 
load Time_F10.mat; % downlink time and uplink time data from training file
figure;
plot(Gx_y,T); % (downlink time and uplink time) vs. groupings
xlabel('G_x = G_y');
ylabel('T_D_L + T_U_L');
legend('Total pilot overhead');

%% Uplink computational complexity
gx_y = [1 2 4 5 8 10 20 25 40 50 100]; % x-axis for both the azimuthal and elevation groupings 
load N_complexed_valued_multiplication_F10.mat; % multiplication for complexed-valued number data
figure;
plot(gx_y,N_cm); % (downlink time and uplink time) vs. computational complexity
xlabel('G_x = G_y');
ylabel('Multiplication for complexed-valued number');
legend('Uplink Computational Complexity');
