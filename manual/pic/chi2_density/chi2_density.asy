texpreamble("\usepackage{amsmath}\usepackage[russian]{babel}");
size(250,0);
import graph;

real chi2k(real k, real x) {
    return x ** (k/2-1) * exp(-x/2) / 2**(k/2) / gamma(k/2);
}

real coef = 5;

real chi21(real x) {return coef * chi2k(1, x);}
real chi22(real x) {return coef * chi2k(2, x);}
real chi23(real x) {return coef * chi2k(3, x);}

pen rp = 1bp+heavyred;
pen gp = 1bp+heavygreen;
pen bluep = 1bp+blue;

draw(graph(chi21, 0.2, 5), rp);
draw(graph(chi22, 0, 5), bluep);
draw(graph(chi23, 0, 5), gp);


        
real start=-0.3, finish = 5;



pen bpen = black+dashed;
pen bpen2 = black+dotted;

yaxis(L="", EndArrow, ymin=start, ymax=4, axis=XEquals(0));
xaxis(L="", EndArrow, xmin=start, xmax=finish, axis=YEquals(0));
label("$0$", (0, 0), SW);
label("$k=1$", (1, 3), N, heavyred);
label("$k=2$", (1.5, 1.5), N, blue);
label("$k=3$", (2.5, 1), N, heavygreen);
