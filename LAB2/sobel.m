function A = sobel(IMG)

% get the number of channels of the Image
[~, ~, channels] = size(IMG);

% if the image is not grayscale, complain
assert(channels == 1, 'A grayscale image should be provided');

% Sobel filter kernel : Gx
% Write here the sobel filter for the X AXIS
% ..
Gx = [-1,0,1,-2,0,2,-1,0,1];
% Sobel filter kernel : Gy
% Write here the sobel filter for the Y AXIS
% ..
Gy = [-1,0,1,-2,0,2,-1,0,1];

% HERE do a convolution of the image with Gx
% ..

B = convn(IMG, Gx, 'same');
% HERE do a convolution of the image with Gx
% ..
C = convn(IMG, Gy, 'same');
% the final gradient value is the addition of the absolute values of each
% convolution
% Write code HERE (Remove the "A = IMG;")
%..
A = abs(B)+abs(C);

end