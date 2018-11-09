% oti metablites tis kauarizei
clear;
% load an RGB image
%diabazei mia eikona apouykeysh se metablhth A olh se ena pinaka 
%dinakas tis diastaseis tis eikonas se pixels
%A <402x400x3 unit8>
%unit8 8 bit unsingt int 0-255 
A = imread('final.png');

% get the width, height and channels of the image
%size epistrefei stis metablites heigth ... to megethos

[height, width, channels] = size(A);
%anoigiparathiro me onoma1
% enable figure1
figure(1);
%emfanizei ti eikona
displayImage(A);

% Convert the RGB image to grayscale
%epistrefei mia allh eikona
GRAY = grayscale(A);
% enable figure2
figure(2);
% show grayscale image
displayImage(GRAY);

BlackWhite = blackEndWhite(A);
figure(3);
displayImage(BlackWhite);


% threshold values in the grayscale image that their value is greater than
% a threshold (e.g. 128). 
% value > 128 -> 1
% value < 128 -> 0

%write code here
%..
% enable HERE the figure3
% ..
% show image HERE
% ..


% ----------------------------------------------------------------------
% create an image with negative colors
% a negative color is max_color - color;
% The values in A are in bytes ranging in [1 255]
% the new color should be 255 - old_color
% write code HERE and store in NEG matrix

neg1 = negative(A);
figure(4);
displayImage(neg1);
% enable HERE the figure3
% ..
% show NEG image HERE
% ..
