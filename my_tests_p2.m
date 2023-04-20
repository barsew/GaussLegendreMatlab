% testy P2

clearvars;

% funckje anonimowe
% T0 = @(x) 1;
% T1 = @(x) x;
% T2 = @(x) 2 .* x .* T1(x) - T0(x);
% 
% fprintf('%s', func2str(T2));
% fun_tab = {@(x) 1, @(x) x};
% fun_tab{2}(10)

% macierze szczerbane...
% AAA = {[1, 2, 5], [3, 4]};
% AAA{1}(3)


% fun alg clenshawa
% a0 = 2;
% a1 = 4;
% a2 = 60;
% a3 = 1.5;
% 
% A = [a0, a1, a2, a3];
% X = [-3 -2 -1 0 1 2 3 4 5 6 6.5 3.33, 0.1212, 0.4234234234, 0.000001];
% 
% [p] = clenshaw(A, X);
% 
% T0 = @(x) 1;
% T1 = @(x) x;
% T2 = @(x) 2 .* x .* x - 1;
% T3 = @(x) 4 .* (x.^3) - 3 .* x;
% T4 = @(x) 8 .* (x.^4) - 8 .* x .* x + 1;
% 
% RES = @(x) a0 .* T0(x) + a1 .* T1(x) + a2 .* T2(x) + a3 .* T3(x);
% max(abs(RES(X) - p))


% czebyszew test
% a0 = 1;
% a1 = 4;
% a2 = 6;
% a3 = 1;
% 
% A = [a0, a1, a2, a3];
% deg = 3;
% 
% p = czebyszew(A, deg);

% main 
a0 = 1;
a1 = 4.4;
a2 = 16;
a3 = 10;
deg = 9;

A = [a0, a1, a2, a3, 1, 1, 1, 1, 1, 1];
n = 5;

[y, p, X] = P2Z14_BSE_gauss_legendre(A, n);
% 
% % T0 = @(x) 1;
% % T1 = @(x) x;
% % T2 = @(x) 2 .* x .* x - 1;
% % T3 = @(x) 4 .* (x.^3) - 3 .* x;
% % T4 = @(x) 8 .* (x.^4) - 8 .* x .* x + 1;
% 
% % RES = @(x) a0 .* T0(x) + a1 .* T1(x) + a2 .* T2(x) + a3 .* T3(x);
% 
% A = [1 1];
% my_p = czebyszew(A)
% my_p(2)
% wielomay = max(abs(RES(X) - my_p(X)))
% 
% % spr. y
% accurate = integral(my_p, -1, 1);
% error = abs(accurate - y)

% test accurate_integral
% A = [1 2 3 4 6 7 8 9 9 1 2 3 1 2 3 4 5 4 5 6 7 8 9];
% n = 5;
% 
% y_gauss = P2Z14_BSE_gauss_legendre(A, n);
% y_acc_int = accurate_integral(A);
% 
% err = abs(y_gauss - y_acc_int)
