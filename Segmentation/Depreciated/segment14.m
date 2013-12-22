function [ OUTLINEDimage ] = segment14( input_image )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
BWimage = rgb2gray(input_image);
EDimage = edge(BWimage, 'canny', [.0 .1], 14 );
se90 = strel('line', 3, 90);
se0 = strel('line',3,0);
DILimage = imdilate (EDimage, [se90, se0]);
FILimage = imfill(DILimage, 'holes');
seD = strel('diamond',1);
ERDimage = imerode(FILimage, seD);
ERDimage = imerode(ERDimage, seD);
Outline = bwperim(ERDimage);
Outline = imdilate(Outline, [se90 se0]);
OUTLINEDimage = input_image;
OUTLINEDimage(Outline) =0;
end

