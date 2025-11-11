import graph;
import patterns;
size(200,0);

add("checker",checker());

path line=(1,0)--(1,0.6);
real t=-log(0.6);

yaxis("$x_n$",EndArrow, ymax=1.5);
xaxis("$x_1$",EndArrow, xmax=1.5);

real edge=1.45;
real c=0.7;

label("$\theta_0$", (0, 1), W);
label("$\theta_0$", (1, 0), S);
label("$c_{\alpha}$", (0, c), W);
label("$c_{\alpha}$", (c, 0), S);
label("$0$", (0, 0), SW);

add("shd",hatch(H=2mm,dir=SE,red));

fill((1, 0)--(1, 1)--(0, 1)--(0, edge)--(edge, edge)--(edge, 0)--cycle, pattern("shd"));

draw((1.45, 0)--(1, 0)--(1, 1)--(0, 1)--(0, 1.45), 1bp+red);

draw((0, 0)--(0, c)--(c, c)--(c, 0)--cycle, 1bp+red);
fill((0, 0)--(0, c)--(c, c)--(c, 0)--cycle, pattern("shd"));

draw((0.5, 0.85)--(0.4,0.75),EndArrow);
draw((0.57, 0.9)--(0.95,0.95),EndArrow);
label("$R_{\alpha}$", (0.5, 0.9), red);

