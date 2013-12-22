function [ meanH ] = findPurp( Image )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%crop image
[x, y] = size(Image);
y = y/3;
x2 = (x/2) -80;
y2 = (y/2) -80;
Cimage = imcrop (Image, [x2, y2, 160, 160]);

%find purple
HSVimage = rgb2hsv(Cimage);
H = HSVimage(:, :, 1);
meanH = mean(H(:));


end

