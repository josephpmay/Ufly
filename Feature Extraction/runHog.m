function [ hog ] = runHog( input_image )
%Converts image and runs histogram of oriented gradients
% from the VL_FEAT Toolbox
%  Note, not used in paper's protocol,
%  Could be used to add additional information
%   to feature matrix

I = single(rgb2gray(input_image)) ;
cellSize = 8 ;
hog = vl_hog(I, cellSize, 'verbose') ;

end

