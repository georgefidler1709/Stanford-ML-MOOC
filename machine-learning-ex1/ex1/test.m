data = load('ex1data1.txt');
X = data(:, 1); y = data(:, 2);
m = length(y);

X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1);
iterations = 1500;
alpha = 0.01;
temp = zeros(1,size(theta,1));
for iter = 1:10
    for i = 1:size(theta,1)
        temp(1,i) = theta(i,1) - (alpha/m)* (((X * theta) - y)'* X(:,i));
    end
    for i = 1:size(theta,1)
        theta(i,1) = temp(1,i);
    end
    sprintf('%.6f, %.6f\n' , theta(1,1), theta(2,1))
end
