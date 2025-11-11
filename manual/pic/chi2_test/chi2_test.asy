import graph;
size(250,0);
        
real start=-0.15, finish = 2.15;
real b1 = 0.7, b2 = 0.95, b3 = 1.2;


real f(real x) {
    real res = 1;
    for (int k = 1; k <= 7; k += 1) {
        if (k % 2 == 0)
            res += 2 * exp(-2 * k * k * x * x);
        else
            res -= 2 * exp(-2 * k * k * x * x);
    }
    return res;
}

draw((0, 1)--(finish, 1), dashed);
draw((0, 0)--graph(f, 0.3, finish), black);

yaxis("$y$",EndArrow, ymax=1.25, ymin=0);
xaxis("$x$",EndArrow, xmin=start, xmax=finish);

draw((b1, 0.05)--(b1, -0.05));
draw((b2, 0.05)--(b2, -0.05));
draw((b3, 0.05)--(b3, -0.05));

draw((b1, -0.5)--(b1, 0), dashed);
draw((b2, -0.5)--(b2, 0), dashed);
draw((b3, -0.5)--(b3, 0), dashed);

draw((start, -0.5)--(b1, -0.5), EndArrow);
label("$\Delta_1$", ((start + b1) / 2, -0.5), N, red);
draw((b1, -0.5)--(b2, -0.5), BeginArrow, EndArrow);
label("$\Delta_2$", ((b2 + b1) / 2, -0.5), N, red);
draw((b2, -0.5)--(b3, -0.5), BeginArrow, EndArrow);
label("$\Delta_3$", ((b2 + b3) / 2, -0.5), N, red);
draw((b3, -0.5)--(finish, -0.5), BeginArrow);
label("$\Delta_4$", ((b3 + finish) / 2, -0.5), N, red);

dot((0.3, 0), filltype=FillDraw(drawpen=blue));
dot((0.5, 0), filltype=FillDraw(drawpen=blue));
dot((0.67, 0), filltype=FillDraw(drawpen=blue));
dot((0.61, 0), filltype=FillDraw(drawpen=blue));
dot((0.83, 0), filltype=FillDraw(drawpen=blue));
dot((0.94, 0), filltype=FillDraw(drawpen=blue));
dot((0.75, 0), filltype=FillDraw(drawpen=blue));
dot((0.97, 0), filltype=FillDraw(drawpen=blue));
dot((1.18, 0), filltype=FillDraw(drawpen=blue));
dot((1.1, 0), filltype=FillDraw(drawpen=blue));
dot((1.26, 0), filltype=FillDraw(drawpen=blue));
dot((1.67, 0), filltype=FillDraw(drawpen=blue));

draw((b1, 0)--(b1, f(b1))--(0, f(b1)), dotted+red);
draw((b2, 0)--(b2, f(b2))--(0, f(b2)), dotted+red);
draw((b3, 0)--(b3, f(b3))--(0, f(b3)), dotted+red);

label("\small$X_{(1)}$", (0.3, 0), N, blue);
label("\small$X_{(n)}$", (1.67, 0), N, blue);
label("$0$", (0, 0), SW);
label("$F(x)$", (1.2, 0.8), E);
label("$1$", (0, 1), NW);

label("$p^0_1$", (0, (0+f(b1))/2), W, red);
label("$p^0_2$", (0, (f(b1)+f(b2))/2), W, red);
label("$p^0_3$", (0, (f(b2)+f(b3))/2), W, red);
label("$p^0_4$", (0, (f(b3)+1)/2), W, red);

