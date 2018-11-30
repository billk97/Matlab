function A = gaussian_filter(kernel_radius, sigma)

assert(kernel_radius > 0, 'Kernel size should greater than zero');

% if kernel_radius == 1 it creates a kernel of size 3x3 : (-1 0 1)
% kernel_radius == 2 it creas a kernel of size 5x5 : (-2 -1 0 1 2)
% kernel_radius == .... 
A = ones(2 * kernel_radius + 1);
sum = 0.0;

for x = -kernel_radius:1:kernel_radius
    for y = -kernel_radius:1:kernel_radius
        % compute the weight from the gaussian function
        % Write code HERE (replace weight = 1.0;)
        % ..
        weight = exp(-((x^2+y^2)/(2*sigma^2)));
        
        % save the weight in the matix A
        % Write code HERE
        % ..
        A(x+kernel_radius+1,y+kernel_radius+1)=weight;
        % sum the coefficient to do a normalization later
        sum = sum + weight;
    end
end

%normalize due to energy loss
for x = 1:(2 * kernel_radius + 1)
    for y = 1:(2 * kernel_radius + 1)
        A(x,y) = A(x,y) / sum;
    end
end

end