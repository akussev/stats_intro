import graph;
size(250,0);

real f(real x) {return exp(-x);}
real g(real x) {return 0.6;}
pair F(real x) {return (x,f(x));}


draw(graph(f, 0, 3.8, operator ..),green);
draw(graph(g, 0, 1, operator ..),blue);
path line=(1,0)--(1,0.6);
draw(line,dashed);
real t=-log(0.6);
draw((t,0)--(t,0.6),dashed);

yaxis("$y$",EndArrow, ymax=1.5);
xaxis("$x$",EndArrow, xmax=4);
label("$\lambda$", (0, 0.6), W);
label("$0$", (0, 0), SW);
label("$1$", (1, 0), S);
label("$c$", (t, 0), NE);
label("$\rho_1(x)$", F(1.5), NE, green);
label("$\lambda\rho_0(x)$", (0.8, 0.6), NE, blue);

draw((-0.15,0)--(t,0), 2bp+red);
draw((1,0)--(3.85,0), 2bp+red);

draw((2, -0.5)--(0.3,-0.1),EndArrow);
draw((2, -0.5)--(2.425,-0.1),EndArrow);
label("$R_{\lambda}$", (2, -0.5), S, red);