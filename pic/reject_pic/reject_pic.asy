size(250, 250);

pair[] A1; A1[4]=(0,2); A1[1]=(1,3); A1[2]=(3,2); A1[3]=(3,-1.5);
pair[] A2; A2[4]=(0.5,2); A2[1]=(1,2.5); A2[2]=(2.5,1.5); A2[3]=(3,-0.5);
pair[] A3; A3[4]=(-1,1.5); A3[1]=(0.5,3.5); A3[2]=(3.5,2.5); A3[3]=(2.5,-2.5);

path[] c;// определяем массив путей.

c[1] = A1[1]..{(1,0)}A1[2]..{(-1,0)}A1[3]..A1[4]..cycle;
c[2] = A2[1]..{(1,0)}A2[2]..{(-1,0)}A2[3]..A2[4]..cycle;
c[3] = A3[1]..{(1,0)}A3[2]..{(-1,0)}A3[3]..{0.5, 1}A3[4]..cycle;

pen first = heavyred+1bp;
pen second = heavygreen+1bp;
pen third = heavyblue+1bp;

draw(c[1], first);// Рисуем исходные пути.
draw(c[2], second);
draw(c[3], third);

label("$R_{\alpha_1}$", (4.5, -1.5), third);
label("$R_{\alpha_2}$", (4, -0.7), first);
label("$R_{\alpha_3}$", (3.2, 0), second);
label("$(X_1, \ldots, X_n)$", (1.8, -1.8), black);

dot((1.9, -1.3), filltype=FillDraw(1bp), black);



