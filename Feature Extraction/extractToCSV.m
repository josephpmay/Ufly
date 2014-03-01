files = dir('*jpe');
for k = 1:numel(files)
    inputImage = imread(files(k).name);
    [f, d] = runSift(inputImage);
    dd = double(d);
    matrixCom = vertcat(f,dd);
    k2 = int2str(k);
    name = strcat(k2, '.csv');
    csvwrite(name,matrixCom);
end