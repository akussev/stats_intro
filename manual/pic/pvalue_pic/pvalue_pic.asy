import graph;
import math;
size(0,100);

real sigma2 = 0.1;
real l = -1.5;
real r = 1.5;
real alpha = 0.5;
real p_value = 0.25;

real rho(real x) {return exp(-x * x / 2 / sigma2) / sqrt(2 * pi * sigma2);}

path rho_graph = graph(rho, l, r, operator..);
path alpha_graph = graph(rho, alpha, r, operator..);
path pvalue_graph = graph(rho, p_value, r, operator..);

path fill_alpha = alpha_graph -- (r,0) -- (alpha,0) -- cycle;
path fill_pvalue = pvalue_graph -- (r,0) -- (p_value,0) -- cycle;
pen alpha_pen = heavyred+opacity(0.7);
pen pvalue_pen = heavygreen;

fill(fill_pvalue, pvalue_pen);
fill(fill_alpha, alpha_pen);

label("$\alpha$", (0.65, 0.2), NE, red);
label("$c_{\alpha}$", (alpha, 0), S, red);
label(scale(0.75)*"$T(X)$", (p_value, 0), S, green);
label("p-value", (0.4, 0.5), NE, green);
draw(rho_graph, black);

xaxis(EndArrow, xmin=l, xmax=r);

real sh = 3.3;

real rho_sh(real x) {return rho(x - sh);}

sigma2 = 0.1;
l = -1.5;
r = 1.5;
alpha = 0.5;
p_value = 0.75;

rho_graph = graph(rho_sh, l + sh, r + sh, operator..);
alpha_graph = graph(rho_sh, alpha + sh, r + sh, operator..);
pvalue_graph = graph(rho_sh, p_value + sh, r + sh, operator..);

//add(shift(sh,0)*alpha_graph);

fill_alpha = alpha_graph -- (r + sh,0) -- (alpha + sh,0) -- cycle;
fill_pvalue = pvalue_graph -- (r + sh,0) -- (p_value + sh,0) -- cycle;
alpha_pen = heavyred;
pvalue_pen = heavygreen+opacity(0.7);

fill(fill_alpha, alpha_pen);
fill(fill_pvalue, pvalue_pen);

label("$\alpha$", (0.65 + sh, 0.2), NE, red);
label("$c_{\alpha}$", (alpha + sh, 0), S, red);
label(scale(0.75)*"$T(X)$", (p_value + sh, 0), S, green);
label("p-value", (0.9 + sh, 0.05), NE, green);
draw(rho_graph, black);

xaxis(EndArrow, xmin=l, xmax=r);

xaxis(EndArrow, xmin=l+sh, xmax=r+sh);


