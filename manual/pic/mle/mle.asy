size(250,0);
import graph;

path p_cdf = (-3, 0);
path p_ecdf = (-3, 0);

real coef = 3;

real f(real x) {
    return exp(-x**2 / 2) + exp(-(x-2)**2 / 2 / 0.5 ** 2) / 0.5;
}


pen pe = heavygreen+1bp;

pen pe_ecdf = heavyred+1bp;
pen pe_dot = heavyred+0.3bp;
        
real start=-2.5, finish = 4;

pen rp = 2bp+heavyred;
pen gp = 2bp+heavygreen;

pen bpen = black+dashed;
pen bpen2 = black+dotted;

draw(graph(f, -2.3, 3.6), blue+1bp);

real mle = 1.9642;
draw((mle, 0)--(mle, f(mle)), dotted);
label("$\widehat{\theta}$", (mle, 0), S);

yaxis("$f_{\theta}$", EndArrow, ymax=coef * 1.1);
xaxis(L="$\theta$", EndArrow, xmin=start, xmax=finish);



