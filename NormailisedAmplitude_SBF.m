clear all;close all;clc;
%% Assumptions
Nx_y = 64; % the number of passive reflective elements in x and y directions
lambda = 1; % the bandwidth wavelength
critical = 0.5*lambda; % based on the Nyquist sampling theorem: Critical spacing intelligent surface
ultra1 = 0.25*lambda; % ultra-dense reconfigurable intelligent surface
ultra2 = 0.125*lambda; % ultra-dense reconfigurable intelligent surface

%% Setting
R_x = -1:0.01:1;
R_y = -1:0.01:1;
[X,Y] = meshgrid(R_x,R_y); % vector to array, for three-dimensional

%% Figure 1
% d = 0.5*lambda
figure;
subplot(2,1,1);
k_min = -0.2; k_max = 0.2; % the difference between the azimuth angle and the azimuth angle input
l_min = -1; l_max = -0.6; % ... the elevation angle and elevation angle input
G_SBF_critical = SBF(X,Y,critical,Nx_y,lambda,k_min,k_max,l_min,l_max); % Spatial Bandpass Filtering function
G_SBF_critical = abs(G_SBF_critical);
Z = G_SBF_critical/max(max(G_SBF_critical));
plot(X,Z,'b'); % beam patterns of SBF with normalised amplitude: X in azimuth direction, Z in beam patterns
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);

subplot(2,1,2);
k_min = -1; k_max = -0.6;
G_SBF_critical = SBF(X,Y,critical,Nx_y,lambda,k_min,k_max,l_min,l_max);
G_SBF_critical = abs(G_SBF_critical);
Z = G_SBF_critical/max(max(G_SBF_critical));
plot(X,Z,'b');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);
hold on;

%% Figure 2
% d = 0.25*lambda
figure;
subplot(2,1,1);
k_min = -0.2; k_max = 0.2;
G_SBF_ultra1 = SBF(X,Y,ultra1,Nx_y,lambda,k_min,k_max,l_min,l_max);
G_SBF_ultra1 = abs(G_SBF_ultra1);
Z = G_SBF_ultra1/max(max(G_SBF_ultra1));
plot(X,Z,'k');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);

subplot(2,1,2);
k_min = -1; k_max = -0.6;
G_SBF_ultra1 = SBF(X,Y,ultra1,Nx_y,lambda,k_min,k_max,l_min,l_max);
G_SBF_ultra1 = abs(G_SBF_ultra1);
Z = G_SBF_ultra1/max(max(G_SBF_ultra1));
plot(X,Z,'k');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);
%hold on;

%% Figure 3
% d = 0.125*lambda
figure;
subplot(2,1,1);
k_min = -0.2; k_max = 0.2;
G_SBF_ultra2 = SBF(X,Y,ultra2,Nx_y,lambda,k_min,k_max,l_min,l_max);
G_SBF_ultra2 = abs(G_SBF_ultra2);
Z = G_SBF_ultra2/max(max(G_SBF_ultra2));
plot(X,Z,'r');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);

subplot(2,1,2);
k_min = -1; k_max = -0.6;
G_SBF_ultra2 = SBF(X,Y,ultra2,Nx_y,lambda,k_min,k_max,l_min,l_max);
G_SBF_ultra2 = abs(G_SBF_ultra2);
Z = G_SBF_ultra2/max(max(G_SBF_ultra2));
plot(X,Z,'r');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);
