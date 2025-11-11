texpreamble("\usepackage{amsmath}\usepackage[russian]{babel}");
import graph;
size(400,0);
        
real start=-0.15, finish = 1.15;

real[] pvalues = {0.03, 0.1, 0.2, 0.4, 0.53, 0.6, 0.9, 1.25};

real f(real x) {
    return x ** 1.5;
}

for (int i = 0; i < 8; ++i) {
  label("$H_{(" + string(i+1) + ")}$", xscale(2)*((i+1) / 8, 0), S);
  dot(xscale(2)*((i+1) / 8, pvalues[i]), filltype=FillDraw(1.5bp));
  draw(xscale(2)*(((i+1) / 8, 0)--((i+1) / 8, pvalues[i])--(0, pvalues[i])), dotted);
  label("$p_{(" + string(i+1) + ")}$", xscale(2)*(0, pvalues[i]), W);
}

draw(xscale(2)*graph(f, 0, 1.1), heavyred);
label(scale(1.5)*"$\alpha_j$", xscale(2)*(1.1, 1), heavyred);

yaxis("", Left, EndArrow, ymax=1.3, ymin=-0.05);
xaxis("",EndArrow, xmin=start, xmax=2*finish);

//dot((0.3, 0), filltype=FillDraw(drawpen=blue));

draw((1/8, 0)--(1/8, 1.1));
draw((7/8, 0)--(7/8, 0.75));
draw((13/8, 0)--(13/8, 1.1));

draw((7/8, 0.75)--(1/8, 0.75), BeginArrow, EndArrow);
draw((13/8, 1.1)--(1/8, 1.1), BeginArrow, EndArrow);

label("Отвергаются в нисходящей процедуре", (0.8, 0.75), N);
label("Отвергаются в восходящей процедуре", (0.8, 1.1), N);

