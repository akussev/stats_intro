import graph;
size(150,0);
        
real start=-0.15, finish = 1.15;

draw((0, start)--(0, finish), EndArrow);
draw((start, 0)--(finish, 0), EndArrow);

label("$\theta$", (finish, 0), S);
label("$R(\theta)$", (0, finish), SW);

real f(real x) {
    return -0.3*(x-finish/2)**2 + 0.7;
}

real g(real x) {
    return exp(-abs(x-0.4)*20);
}
label("$\theta^*(\mathbf X)$", (0.8, 0.8), red);
draw(graph(f, 0, 1), red+1bp);
label("$\widehat{\theta}(\mathbf X)$", (0.65, 0.3), blue);
draw(graph(g, 0, 1), blue+1bp);
