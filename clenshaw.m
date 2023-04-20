function p = clenshaw(A, X)
% Projekt 2, zadanie 14
% Bartosz Seweryn, 320733
%
% Funckja obliczająca wartości wielomianu p, w węzłach x, gdzie p jest
% wielomianem danym w bazie złożonej z wielomianów Czebyszewa,
% p(x) = a_0*T_0(x) + a_1*T_1(x) + ... + a_m*T_m(x), T_i - i-ty wielomian
% w bazie Czebyszewa
% WEJŚCIE:
%   A - wektor wspołczynników wielomianu p, [a_0, a_1, ..., a_m] 
%   X - wektor, węzły w których wartości chcemy policzyć
% WYJŚCIE:
%   p - wektor wartości wielomianu p w węzłach x


n = length(A);
m = length(X);

% Alokacja pamięci
p = zeros(1, m);
B = zeros(1, n + 1);
alfa = 2 .* ones(1, n + 1);
alfa(1) = 1;
alfa(2) = 1;
gamma = ones(1, n + 1);
gamma(1) = 0;

% Algorytm Clenshawa
for j = 1:m
    B(n + 1) = 0;
    B(n) = A(n);
    for i = (n - 1):-1:1
        B(i) = A(i) + (alfa(i + 1) * X(j)) * B(i + 1) - gamma(i + 2) * B(i + 2);
    end
    p(j) = alfa(1) * B(1);
end

% b_prev_prev = @(x) 0;
% b_prev = @(x) A(n);
% for i = (n - 1):-1:1
%     b = @(x) A(i) + 2 .* x .* b_prev(x) - b_prev_prev(x);
%     b_prev_prev = b_prev;
%     b_prev = b;
% end
% b = @(x) 2 .* b(x);

end % function

