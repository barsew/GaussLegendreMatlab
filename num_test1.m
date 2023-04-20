function [] = num_test1()
% Projekt 2, zadanie 14
% Bartosz Seweryn, 320733
%
% Test numeryczny porównujący obliczoną wartość całki kwadraturą
% Gaussa-Legendre'a oraz funkjcą wykorzystującą własność, iż wartość całki
% na przedziale [-1, 1] z k-tego wielomianu bazy wielomianów Czebyszewa
% wynosi 0 dla k nieparzystych i 2 / (1 - k^2) dla k parzystych.

max_deg = 100; % maksymalny stopień wielomianu
n = [3, 5, 9]; % ilość punktów kwadratury
err = zeros(1, max_deg);

for j = 1:length(n)
    for i = 1:max_deg
        A = randi(100, [1 i]);
        y = P2Z14_BSE_gauss_legendre(A, n(j));
        y_accurate = accurate_integral(A);
        err(i) = abs(y - y_accurate);
    end
    fprintf("Błedy dla wielomianów kolejnych stopni: ");
    fprintf("%d, ", err);
    fprintf("\n");
end

end % function

