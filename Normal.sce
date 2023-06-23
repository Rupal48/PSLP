clear;clc
x = [462, 480, 498, 516, 534, 552, 570, 588, 606, 624];
f = [98, 75, 56, 42, 30, 21, 15, 11, 6, 2];
xf = x .* f;
xx = x .* x;
xxf = xx .* f;
mu = sum(xf) / sum(f);
sigma = sqrt((sum(xxf) / sum(f)) - mu^2);
x = linspace(400,600, 100);
pdf = exp(-(x - mu).^2 / (2 * sigma^2)) / (sigma * sqrt(2 * %pi));
plot(x, pdf);
