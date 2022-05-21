clear all;close all;clc;
N = 64;
lambda = 1;
d1 = 0.5*lambda;
d2 = 0.25*lambda;
d3 = 0.125*lambda;
l_opt = -0.2;
A = 16*lambda;
x = -1:0.01:1;
y = -1:0.01:1;
[X,Y] = meshgrid(x,y);

%% d = 0.5*lambda
figure;
subplot(2,1,1);
k_opt = 0.2;
f1 = NBS(X,Y,d1,N,lambda,k_opt,l_opt);
Z = abs(f1)/max(max(abs(f1)));
plot(X,Z,'b');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);


subplot(2,1,2);
k_opt = -0.9;
f1 = NBS(X,Y,d1,N,lambda,k_opt,l_opt);
Z = abs(f1)/max(max(abs(f1)));
plot(X,Z,'b');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);
%hold on;

%% d = 0.25*lambda
figure;
subplot(2,1,1);
k_opt = 0.2;
f2 = NBS(X,Y,d2,N,lambda,k_opt,l_opt);
Z = abs(f2)/max(max(abs(f2)));
plot(X,Z,'k');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);


subplot(2,1,2);
k_opt = -0.9;
f2 = NBS(X,Y,d2,N,lambda,k_opt,l_opt);
Z = abs(f2)/max(max(abs(f2)));
plot(X,Z,'k');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);
%hold on;

%% d = 0.125*lambda
figure;
subplot(2,1,1);
k_opt = 0.2;
f3 = NBS(X,Y,d3,N,lambda,k_opt,l_opt);
Z = abs(f3)/max(max(abs(f3)));
plot(X,Z,'r');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);


subplot(2,1,2);
k_opt = -0.9;
f3 = NBS(X,Y,d3,N,lambda,k_opt,l_opt);
Z = abs(f3)/max(max(abs(f3)));
plot(X,Z,'r');
axis([-1 1 0 1]);
set(gca,'ytick',0:0.2:1);
