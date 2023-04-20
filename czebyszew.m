function p = czebyszew(A)
% Projekt 2, zadanie 14
% Bartosz Seweryn, 320733
% 
% Funkcja generująca wielomian p stopnia deg, gdzie p jest wielomianem
% danym w bazie złożonej z wielomianów Czebyszewa,
% p(x) = a_0*T_0(x) + a_1*T_1(x) + ... + a_m*T_m(x), T_i - i-ty wielomian
% w bazie Czebyszewa
% WEJŚCIE:
%   A - wektor długości deg + 1 wspołczynników wielomianu p,
%       [a_0, a_1, ..., a_m]
% WYJŚCIE:
%   p - wynikowy wielomian 

deg = length(A) - 1;
T{1} = @(x) 1;
T{2} = @(x) x;

for i = 3:(deg + 1)
   T{i} = @(x) 2 .* x .* T{i - 1}(x) - T{i - 2}(x);
end

p = @(x) 0;
for i = 1:(deg + 1)
    p = @(x) p(x) + A(i) .* T{i}(x);
end

end % function

