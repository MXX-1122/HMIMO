clear all;close all;clc;
N = 64;
lambda = 1;
d1 = 0.5*lambda;
d2 = 0.25*lambda;
d3 = 0.125*lambda;
% k_min = -0.2; k_max = 0.2;
% l_min = -1; l_max = -0.6;
A = 16*lambda;
x = -1:0.01:1;
y = -1:0.01:1;
[X,Y] = meshgrid(x,y);

%% d = 0.5*lambda
figure;
subplot(2,1,1);
k_min = -0.2; k_max = 0.2;
l_min = -1; l_max = -0.6;
f1 = SBF(X,Y,d1,N,lambda,k_min,k_max,l_min,l_max);

Z = abs(f1)/max(max(abs(f1)));
plot(X,Z,'b');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);


subplot(2,1,2);
k_min = -1; k_max = -0.6;
f1 = SBF(X,Y,d1,N,lambda,k_min,k_max,l_min,l_max);

Z = abs(f1)/max(max(abs(f1)));

plot(X,Z,'b');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);
hold on;

%% d = 0.25*lambda
figure;
subplot(2,1,1);
k_min = -0.2; k_max = 0.2;
f2 = SBF(X,Y,d2,N,lambda,k_min,k_max,l_min,l_max);
Z = abs(f2)/max(max(abs(f2)));
plot(X,Z,'k');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);


subplot(2,1,2);
k_min = -1; k_max = -0.6;
f2 = SBF(X,Y,d2,N,lambda,k_min,k_max,l_min,l_max);
Z = abs(f2)/max(max(abs(f2)));
plot(X,Z,'k');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);
%hold on;

%% d = 0.125*lambda
figure;
subplot(2,1,1);
k_min = -0.2; k_max = 0.2;
f3 = SBF(X,Y,d3,N,lambda,k_min,k_max,l_min,l_max);
Z = abs(f3)/max(max(abs(f3)));
plot(X,Z,'r');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);

subplot(2,1,2);
k_min = -1; k_max = -0.6;
f3 = SBF(X,Y,d3,N,lambda,k_min,k_max,l_min,l_max);
Z = abs(f3)/max(max(abs(f3)));
plot(X,Z,'r');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);
