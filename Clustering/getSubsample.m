% gets all CSV files from developmental stage 
% and concatinates them into one file,
% then takes a (1/10) subsample of the interest
% points for use in clustering


files = dir('*.csv');
interestpoints = [];
for k = 1:numel(files)
inputCSV = csvread(files(k).name);
display(k)
interestpoints = [interestpoints inputCSV];
end
interestpoints2 = interestpoints.';
testValues = interestpoints2(1:10:end,:);











%interestpointsTest = [];
%k = 10;
%while k > 0
%inputCSV = csvread(files(k).name);
%display(k)
%interestpointsTest = [interestpointsTest inputCSV];
%k = k-1;
%end
%interestpointsTest2 = interestpointsTest.';

