import graph;
size(190,0);

path line=(0,0)--(2,0)--(3,1)--(1,1)--(0,0);
draw(line);
pair c = (1.7,0.5), a = (0.7,0.2), b = (1.7,1.5);

real coef=0.15;
draw(c+(a-c)*coef--c+(a-c)*coef+(b-c)*coef--c+(b-c)*coef);
draw((0.7,0.2)--(1.7,1.5),EndArrow);
draw((0.7,0.2)--(1.7,0.5),EndArrow);
draw((1.7,1.5)--(1.7,0.5),dashed);


label("$\mathcal{L}$", (0.2, 0.05), NE);
label("$\Pr_{\mathcal{L}} \mathbf X$", (1.2, 0.35), SE);
label("$\mathbf X$", (1.4, 1.1), NW);
