texpreamble("\usepackage{amsmath}\usepackage[russian]{babel}");
size(250,0);
import graph;

real coef = 10;

real norm(real x) {
    return coef * exp(-x**2 / 2) / sqrt(2 * pi);
}

real student(real k, real x) {
    return (1 + x ** 2 / k) ** (-(k+1)/2) * gamma((k+1)/2) / gamma(k/2) / sqrt(pi * k);
}


real student1(real x) {return coef * student(1, x);}
real student3(real x) {return coef * student(3, x);}

pen rp = 1bp+heavyred;
pen gp = 1bp+heavygreen;
pen bluep = 1bp+blue;

draw(graph(student1, -4, 4), rp);
draw(graph(student3, -4, 4), bluep);
draw(graph(norm, -4, 4), gp);

        
real start=-4, finish = 4;



pen bpen = black+dashed;
pen bpen2 = black+dotted;

yaxis(L="", EndArrow, ymin=-0.2, ymax=coef*0.45, axis=XEquals(0));
xaxis(L="", EndArrow, xmin=start, xmax=finish, axis=YEquals(0));
label("$0$", (0, 0), SW);
label("$\mathcal{N}(0, 1)$", (1, 4), heavygreen);
label("$T_3$", (1.5, 2.5), blue);
label("$T_1$", (3, 1), heavyred);
