% Runs Clustering

options = statset('Display', 'iter', 'MaxIter', 1000);
[m,n] = size(testValues);
k = idivide(m, 100);
stagesubcluster = kmeans(testValues, k, 'options', options);