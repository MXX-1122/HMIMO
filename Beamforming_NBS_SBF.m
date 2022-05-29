clear all;close all;clc;
%% Assumptions
Nx_y = 64; % the number of passive reflective elements in x and y directions
lambda = 1; % the bandwidth wavelength
d = 0.5*lambda; % based on the Nyquist sampling theorem: Critical spacing intelligent surface
k_opt = 0.6; % assumed value of azimuth target in x direction
l_opt = -0.2; % assumed value of elevation target in y direction

% for SBF
k_min = -0.2; % the difference between the minimum azimuth angle and the azimuth angle input
k_max = 0.2; % .. the maximum azimuth angle and azimuth angle input
l_min = 0.2; % ... the minimum elevation angle and elevation angle input
l_max = 0.6; % ... the maximum elevation angle and elevation angle input

%% NBS
R_x = -1:0.01:1;
R_y = -1:0.01:1;
[X,Y] = meshgrid(R_x,R_y); % vector to array, for three-dimensional
G_NBS = NBS(X,Y,d,Nx_y,lambda,k_opt,l_opt); % Narrow Beam Steering function
G_NBS = abs(G_NBS);
Z = G_NBS/max(max(G_NBS)); % beamforming

% plotting
figure;
surf(X,Y,Z);   
shading flat;
azi = xlabel('$\frac{\lambda}{2\pi} \cdot {\psi}_{\rm{out}}^{\rm{azi}}$');
set(azi,'Interpreter','latex')
ele = ylabel('$\frac{\lambda}{2\pi} \cdot {\psi}_{\rm{out}}^{\rm{ele}}$');
set(ele,'Interpreter','latex')
beam = zlabel('Beam Pattern of NBS');
set(beam,'Interpreter','latex')
colorbar('EastOutside')

%% SBF
R_x = -1:0.01:1;
R_y = -1:0.01:1;
[X,Y] = meshgrid(R_x,R_y); % vector to array, for three-dimensional
G_SBF = SBF(X,Y,d,Nx_y,lambda,k_min,k_max,l_min,l_max); % Spatial Beam Filtering function
G_SBF = abs(G_SBF);
Z = G_SBF/max(max(G_SBF)); % beamforming

% plotting
hold on;
figure;
surf(X,Y,Z);   
shading flat;
azi = xlabel('$\frac{\lambda}{2\pi} \cdot {\psi}_{\rm{out}}^{\rm{azi}}$');
set(azi,'Interpreter','latex')
ele = ylabel('$\frac{\lambda}{2\pi} \cdot {\psi}_{\rm{out}}^{\rm{ele}}$');
set(ele,'Interpreter','latex')
beam = zlabel('Beam Pattern of SBF [dB]');
set(beam,'Interpreter','latex')
colorbar('EastOutside')
