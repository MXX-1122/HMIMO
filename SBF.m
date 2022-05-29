function G = SBF(R_x,R_y,d,Nx_y,lambda,k_min,k_max,l_min,l_max)
    % x: azimuth angle range
    % y: elevation angle range
    % same dimension for x and y, and all inputs are all for column
    F = @(k)diric(d*2*pi/lambda*(k-R_x),Nx_y); % Dirichelet function for k
    G_x = quadv(@(k)F(k),k_min,k_max); % vector ouput for the scalar input k
    
    F = @(l)diric(d*2*pi/lambda*(l-R_y),Nx_y); % Dirichelet function for l
    G_y = quadv(@(l)F(l),l_min,l_max); % vector ouput for the scalar input l
    
    G = G_x.*G_y;
end