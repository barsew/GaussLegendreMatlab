function y = accurate_integral(A)
% Projekt 2, zadanie 14
% Bartosz Seweryn, 320733
%
% Funkcja obliczająca dokładną wartość całki z wielomianu p, gdzie p jest 
% wielomianem danym w bazie zlożonej z wielomianów Czebyszewa,
% p(x) = a_0*T_0(x) + a_1*T_1(x) + ... + a_m*T_m(x), T_i - i-ty wielomian
% w bazie Czebyszewa, na przedziale [-1, 1] wykorzystująca fakt, że
% wartość całki z k-tego wielomianu bazy Czebyszewa jest równa 0 dla k
% nieparzystych i 2 / (1 - k^2) dla k parzystych.
% WEJŚCIE:
%   A - wektor wspołczynników wielomianu p, [a_0, a_1, ..., a_m] 
% WYJŚCIE:
%   y - liczba rzeczywista, przybliżona wartość całki

y = 0;

for i = 1:length(A)
    if(mod(i - 1, 2) == 0)
        y = y + A(i) * 2 / (1 - (i - 1) * (i - 1));
    end
end

end % function

