clc; clear;

x = -4:0.1:4;

% tanh
tanh = (exp(x) - exp(-x)) ./ (exp(x) + exp(-x));
plot(x, tanh, 'r-', 'LineWidth', 2);
axis([-4, 4, -1.05, 2]); 
axis square;
grid on;
hold on;

% sigmoid
sigmoid = 1./(1 + exp(-x));
plot(x, sigmoid, 'g-', 'LineWidth', 2);
hold on;

% softplus
softplus = log(1+exp(x));
plot(x, softplus, 'b-', 'LineWidth', 2);
hold on;

% softsign 
softsign = x ./ (abs(x)+1);
plot(x, softsign, 'c-', 'LineWidth', 2);
hold on;

% ELU
elu = x .* ( x > 0 ) + ( exp(x)-1 ) .* ( x <= 0 );
plot(x, elu, 'Color', [0.5,0.5,0.5], 'LineWidth', 2);
hold on;

% ReLU
relu = x.*( x > 0 );
plot(x, relu, 'Color', [0., 0., 0.], 'LineWidth', 2);
hold on;

% SReLU
srelu = x.*( x > -1 ) - ( x <= -1 ) ;
plot(x, srelu, 'Color', [0.5, 0., 0.], 'LineWidth', 2);
hold on;

% LReLU/PReLU/RReLU
lrelu = x.*(x>0) + 0.1*x.*(x<=0);
plot(x, lrelu, 'Color', [0.75, 0., 0.5], 'LineWidth', 2);
hold on;

title('Activation Functions');
legend('tanh', 'sigmoid', 'softplus', 'softsign', 'ELU', 'ReLU', 'SReLU', 'LReLU/PReLU');


