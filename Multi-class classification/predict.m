function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%
X = [ones(m, 1) X]; 

a2 = sigmoid(X*Theta1', 2); % 5000 X 401 times 25 X 401 = 50000 X 25

n = size(a2,1);
a2 = [ones(n, 1) a2];

a3 = sigmoid(a2*Theta2'); % 5000 X 26 times 26 X 10 = 5000 X 10

[dummy p]= max(a3'); % 10 X 2 times 

p = p';

% =========================================================================


end
