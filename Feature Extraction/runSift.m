function [ f, d ] = runSift( input_image )
%Converts colored jpg to correct format
% and calls SIFT from vl_feat Toolbox 
% ***REQUIRES VL-FEAT***
I = single(rgb2gray(input_image)) ;
[f,d] = vl_sift(I) ;

end

