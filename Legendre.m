x = linspace(-1, 1, 100);
P3 = legendre(3, x);
plot(x, P3)
xlabel('x')
ylabel('P_3(x)')
title('Legendre Polynomial P_3(x)')
%%
% Defining orders of Legendre and associated Legendre functions
n = 0:3;
a = 0.3;
m = 50; % Number of x values

x = linspace(-1, 1, m); % Defining x range
P = zeros(length(n), m); % Arrays for storing Legendre functions
Q = zeros(length(n), m); % Arrays for storing associated Legendre functions

for i = 1:length(n)
    for j = 1:m
        % Computing Legendre and associated Legendre functions for each x and i
        Pn = legendre(n(i), x(j)); % Computing Legendre functions
        Qn = legendre(n(i), x(j), 'sch'); % Computing associated Legendre functions
        P(i,j) = Pn(1); % Selecting only the Legendre function
        Q(i,j) = Qn(1); % Selecting only the associated Legendre function
    end
end

% Plotting Legendre and associated Legendre functions
figure
hold on
for i = 1:length(n)
    plot(x, P(i,:), '-.', 'LineWidth', 1.5)
    plot(x, Q(i,:), '--', 'LineWidth', 1.5)
end
hold off
xlabel('x')
ylabel('P_n(x) and Q_n(x)')
legend('Legendre Polynomials', 'Associated Legendre Functions')
title('Legendre Polynomials and Associated Legendre Functions')