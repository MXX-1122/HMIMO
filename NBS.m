function G = NBS(R_x,R_y,d,Nx_y,lambda,k_opt,l_opt)
    % x: azimuth angle range
    % y: elevation angle range
    % same dimension for x and y, and all inputs are all for column
    G_x = diric(d*2*pi/lambda*(k_opt-R_x),Nx_y); % Dirichelet function
    G_y = diric(d*2*pi/lambda*(l_opt-R_y),Nx_y);
    
    G = G_x.*G_y;
end