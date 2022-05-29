clear all;close all;clc;
%% Assumptions
Nx_y = 64; % the number of passive reflective elements in x and y directions
lambda = 1; % the bandwidth wavelength
critical = 0.5*lambda; % based on the Nyquist sampling theorem: Critical spacing intelligent surface
ultra1 = 0.25*lambda; % ultra-dense reconfigurable intelligent surface
ultra2 = 0.125*lambda; % ultra-dense reconfigurable intelligent surface
l_opt = -0.2; % assumed value of elevation target in y direction

%% Setting
R_x = -1:0.01:1;
R_y = -1:0.01:1;
[X,Y] = meshgrid(R_x,R_y); % vector to array, for three-dimensional

%% Figure 1
% d = 0.5*lambda
figure;
% when azi_opt = 0.2
subplot(2,1,1);
k_opt = 0.2; % assumed value in azimuth direction
G_NBS_critical = NBS(X,Y,critical,Nx_y,lambda,k_opt,l_opt); % Narrow Beam Steering function
G_NBS_critical = abs(G_NBS_critical);
Z = G_NBS_critical/max(max(G_NBS_critical));
plot(X,Z,'b'); % beam patterns of NBS with normalised amplitude: X in azimuth direction, Z in beam patterns
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);

% when azi_opt = -0.9
subplot(2,1,2);
k_opt = -0.9; % assumed value in azimuth direction
G_NBS_critical = NBS(X,Y,critical,Nx_y,lambda,k_opt,l_opt); % Narrow Beam Steering function
G_NBS_critical = abs(G_NBS_critical);
Z = G_NBS_critical/max(max(G_NBS_critical));
plot(X,Z,'b');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);
%hold on;

%% Figure 2
% d = 0.25*lambda
figure;
% when azi_opt = 0.2
subplot(2,1,1);
k_opt = 0.2;
G_NBS_ultra1 = NBS(X,Y,ultra1,Nx_y,lambda,k_opt,l_opt);
Z = abs(G_NBS_ultra1)/max(max(abs(G_NBS_ultra1)));
plot(X,Z,'k');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);

% when azi_opt = -0.9
subplot(2,1,2);
k_opt = -0.9;
G_NBS_ultra1 = NBS(X,Y,ultra1,Nx_y,lambda,k_opt,l_opt);
G_NBS_ultra1 = abs(G_NBS_ultra1);
Z = G_NBS_ultra1/max(max(G_NBS_ultra1));
plot(X,Z,'k');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);
%hold on;

%% Figure 3
% d = 0.125*lambda
figure;
% when azi_opt = 0.2
subplot(2,1,1);
k_opt = 0.2;
G_NBS_ultra2 = NBS(X,Y,ultra2,Nx_y,lambda,k_opt,l_opt);
G_NBS_ultra2 = abs(G_NBS_ultra2);
Z = G_NBS_ultra2/max(max(G_NBS_ultra2));
plot(X,Z,'r');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);

% when azi_opt = -0.9
subplot(2,1,2);
k_opt = -0.9;
G_NBS_ultra2 = NBS(X,Y,ultra2,Nx_y,lambda,k_opt,l_opt);
Z = abs(G_NBS_ultra2)/max(max(abs(G_NBS_ultra2)));
plot(X,Z,'r');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);
