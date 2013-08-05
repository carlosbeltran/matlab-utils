
%# absolute tolerance equality
isequalAbs = @(x,y,tol) ( abs(x-y) <= tol );
%# relative tolerance equality
isequalRel = @(x,y,tol) ( abs(x-y) <= ( tol*max(abs(x),abs(y)) + eps) );

W = 200;
sigma = W/5;
mu = 50;
X= [1:W];

A = normpdf(X,mu,sigma);
B  = (1/(sigma*sqrt(2*pi)))*exp((-((X-mu).^2))/(2*(sigma.^2)));

isequalAbs(A, B, 1e-6)
isequalRel(A, B, 1e-6)
%plot(A);
%plot(B);
