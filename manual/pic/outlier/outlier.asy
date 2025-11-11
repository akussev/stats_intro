texpreamble("\usepackage{amsmath}\usepackage[russian]{babel}");
size(250,0);
import graph;

path p_cdf = (-3, 0);
path p_ecdf = (-3, 0);

real[] a = {
    0.25895052, -0.53713141,  4.1340954 , 30.32860867,  2.7793582 ,
    1.27240179, -0.42785478,  0.76439707,  0.41019257
};

real med = 0.76439;
real mn = 5.33144644;
real throw = a[3];

pen dot_pen = black+4bp;

for (int i = 0; i < 9; ++i) {
    dot((a[i], 0), filltype=FillDraw(1bp));
}

draw((0, -0.5)--(0, 0.5));
label("$\theta$", (0, 0), 2 * S);
pen good_pen = heavygreen;
draw((med, -0.5)--(med, 0.5));
label("$\widehat{\mu}$", (med, 0), 2 * N, good_pen);
pen bad_pen = heavyred;
draw((mn, -0.5)--(mn, 0.5));
label("$\overline{X}$", (mn, 0), 2 * N, bad_pen);

label("выброс", (throw, 0), 2 * S);






        
real start=-3, finish = 35;

pen rp = 2bp+heavyred;
pen gp = 2bp+heavygreen;

pen bpen = black+dashed;
pen bpen2 = black+dotted;

xaxis(L="", EndArrow, xmin=start, xmax=finish, axis=YEquals(0));
