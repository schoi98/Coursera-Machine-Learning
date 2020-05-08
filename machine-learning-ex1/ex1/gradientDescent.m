function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
   hypothesis = X * theta;
   theta1 = theta(1) - (alpha/m) .* sum((hypothesis - y).*X(:,1));
   theta2 = theta(2) - (alpha/m) .* sum((hypothesis - y).*X(:,2));
   theta = [theta1; theta2];
    




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
%     plot(iter, J_history(iter), 'rx', 'MarkerSize', 10);
%     hold on           % Testing to see how fast the descent is while debugging.
end

end
