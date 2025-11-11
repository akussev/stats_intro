import graph;
size(0,150);

real start=-0.15, finish = 2.15;

picture pic, pic2;


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

draw(pic, (0, 1)--(finish, 1), dashed);
draw(pic, (start, 0)--graph(f, 0.3, finish), red);

yaxis(pic, "$y$",EndArrow, ymax=1.25);
xaxis(pic, "$x$",EndArrow, xmin=start, xmax=finish);

label(pic, "$0$", (0, 0), SW);
label(pic, "$K(x)$", (0.5, 0.5), red);
label(pic, "$1$", (0, 1), W);

real k_a = 1.1;
draw(pic, (k_a, 0)--(k_a, f(k_a))--(0, f(k_a)), dotted);
dot(pic, (k_a, f(k_a)), filltype=FillDraw(0.5bp), red);
label(pic, "$k_{1-\alpha}$", (k_a, 0), S);
label(pic, "$1-\alpha$", (0, f(k_a)), W);

add(pic);

real rho(real x) {
    real res = 0;
    for (int k = 1; k <= 7; k += 1) {
        if (k % 2 == 0)
            res += 2 * exp(-2 * k * k * x * x) * (-4 * k ** 2 * x);
        else
            res -= 2 * exp(-2 * k * k * x * x) * (-4 * k ** 2 * x);
    }
    return res;
}
real coef = 0.7;
draw(pic2, yscale(coef)*((start, 0)--graph(rho, 0.3, finish)), red);
fill(pic2, yscale(coef)*((k_a, 0)--graph(rho, k_a, finish)--cycle), red);
label(pic2, "$k_{1-\alpha}$", (k_a, 0), S);
label(pic2, "$K'(x)$", (0.4, 0.8), red);
label(pic2, "$\alpha$", (1.25, 0.15), black);

yaxis(pic2, "$y$",EndArrow, ymax=1.25);
xaxis(pic2, "$x$",EndArrow, xmin=start, xmax=finish+0.2);
add(shift(2.7, 0)*pic2);









