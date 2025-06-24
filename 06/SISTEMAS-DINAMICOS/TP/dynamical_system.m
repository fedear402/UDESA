2+2
2+2
function dhdt = dynamical_system(t, state)
    k = state(1);
    h = state(2);
    k_prime = 0.1 * k^0.3 * h^0.12 - 0.76 * k;
    h_prime = 0.1 * k^0.3 * h^0.12 - 0.76 * h;
    dhdt = [k_prime; h_prime];
end

# Define the steady state
k_star = 0.0136;
h_star = 0.0136;

# Time span for the simulation
t_span = [0 10];

# Plot the vector field
[x, y] = meshgrid(linspace(k_star-0.1, k_star+0.1, 20),
                  linspace(h_star-0.1, h_star+0.1, 20));
u = zeros(size(x));
v = zeros(size(y));
for i = 1:numel(x)
    state_derivatives = dynamical_system(0, [x(i); y(i)]);
    u(i) = state_derivatives(1);
    v(i) = state_derivatives(2);
end
fu=u./sqrt(u.^2+v.^2);

fv=v./sqrt(u.^2+v.^2);

quiver(x, y, fu, fv, .5);

hold on;

# Plot trajectories starting close to the steady state
for delta = -0.005:0.0025:0.005
    initial_conditions = [k_star + delta; h_star + delta];
    [t, sol] = ode45(@dynamical_system, t_span, initial_conditions);
    plot(sol(:, 1), sol(:, 2));
end

# Additional plot settings
xlabel('k');
ylabel('h');
title('Nonlinear Dynamical System Near Steady State');
grid on;
legend('Vector field', 'Trajectories');
axis([k_star-0.01 k_star+0.01 h_star-0.01 h_star+0.01]);
hold off;

