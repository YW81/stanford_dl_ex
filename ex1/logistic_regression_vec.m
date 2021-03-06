function [f,g] = logistic_regression_vec(theta, X,y)
  %
  % Arguments:
  %   theta - A column vector containing the parameter values to optimize.
  %   X - The examples stored in a matrix.  
  %       X(i,j) is the i'th coordinate of the j'th example.
  %   y - The label for each example.  y(j) is the j'th example's label.
  %
  m=size(X,2);
  
  % initialize objective value and gradient.
  f = 0;
  g = zeros(size(theta));
  

  %
  % TODO:  Compute the logistic regression objective function and gradient 
  %        using vectorized code.  (It will be just a few lines of code!)
  %        Store the objective function value in 'f', and the gradient in 'g'.
  %
%%% YOUR CODE HERE %%%
function answer = h_theta(theta, X)
    X=theta'*X;
    X=1./(1+exp(-X));
    answer = X;
end
f=log(h_theta(theta,X))*y'+log(1-h_theta(theta,X))*(1-y)';
f=-f;
Xt=h_theta(theta,X)-y;
g=X*Xt';
end