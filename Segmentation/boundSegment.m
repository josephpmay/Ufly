function [ boundImage ] = boundSegment( input_image )
image = defaultSegment(input_image);
image = mean(image,3);
clear s;
s = regionprops(image, 'Area', 'BoundingBox');
numObj = numel(s);
index = 1;
for k = 1: numObj-1
    if s(k+1).Area > s(index).Area
        index = k+1;
    else
        index = index;
    end
end
figure, imshow(input_image);
rectangle('Position',s(index).BoundingBox);
boundImage = null;
