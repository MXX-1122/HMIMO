N = 64;
lambda = 1;
d = 0.5*lambda;
k_opt = 0.6;
l_opt = -0.2;
k_min = -0.2;
k_max = 0.2;
l_min = 0.2;
l_max = 0.6;

%% NBS
x = -1:0.01:1;
y = -1:0.01:1;
[X,Y] = meshgrid(x,y);
f = NBS(X,Y,d,N,lambda,k_opt,l_opt);
figure
Z = abs(f)/max(max(abs(f)));
surf(X,Y,Z);   shading flat;

h = xlabel('$\frac{\lambda}{2\pi} \cdot {\psi}_{\rm{out}}^{\rm{azi}}$');
set(h,'Interpreter')

h = ylabel('$\frac{\lambda}{2\pi} \cdot {\psi}_{\rm{out}}^{\rm{ele}}$');
set(h,'Interpreter')
h = zlabel('Beam Pattern of NBS');
set(h,'Interpreter','latex')
set(gca,'xtick',-1:0.4:1);
set(gca,'ytick',-1:0.4:1);
colorbar('east')
%% SBF
x = -1:0.01:1;
y = -1:0.01:1;
[X,Y] = meshgrid(x,y);
f = SBF(X,Y,d,N,lambda,k_min,k_max,l_min,l_max);
figure
Z = abs(f)/max(max(abs(f)));
surf(X,Y,Z);   shading flat;
hold on
h = xlabel('$\frac{\lambda}{2\pi} \cdot {\psi}_{\rm{out}}^{\rm{azi}}$');
set(h,'Interpreter')

h = ylabel('$\frac{\lambda}{2\pi} \cdot {\psi}_{\rm{out}}^{\rm{ele}}$');
set(h,'Interpreter')
h = zlabel('Beam Pattern of SBF [dB]');
set(h,'Interpreter','latex')
set(gca,'xtick',-1:0.4:1);
set(gca,'ytick',-1:0.4:1);
colorbar('east')
