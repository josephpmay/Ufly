function [ output ] = runLBP( input_image )
%Converts image and runs local binary pattern
% from the VL_FEAT Toolbox
%  Note, not used in paper's protocol,
%  Could be used to add additional information
%   to feature matrix

I = single(rgb2gray(input_image)) ;
cellSize = 8;
output = vl_lbp(I, cellSize);

end

