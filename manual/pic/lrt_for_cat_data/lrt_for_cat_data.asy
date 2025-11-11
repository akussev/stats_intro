import graph;
size(0,150);

pair p=(0, 0), p1=(-3, -2), p2=(5, 0), p3=(0, 5);
real coef=0.75;
pair e1=p1*coef, e2=p2*coef, e3=p3*coef;
pair end1=(-1, 0.5), end2=(2, 1.5);
draw(p--p1, EndArrow);
draw(p--p2, EndArrow);
draw(p--p3, EndArrow);
dot(e1, filltype=FillDraw(drawpen=black));
dot(e2, filltype=FillDraw(drawpen=black));
dot(e3, filltype=FillDraw(drawpen=black));

label("$0$", p, S);
label("$p_1$", p1, S);
label("$p_2$", p2, S);
label("$p_3$", p3, W);
filldraw(e1--e2--e3--cycle, blue+opacity(0.75));
draw(end1{dir(45)}..{up}end2, red+1bp);
dot(end1, red, filltype=FillDraw(white));
dot(end2, red, filltype=FillDraw(white));
label("$\mathcal{S}_{2}$", coef*e2, N);

pair u1=(-7, 1), u2=(-3, 1);
pair a1=(-6, 1), a2=(-4, 1);
draw(u1--u2, EndArrow);
draw(a1--a2, red+1.5bp);
dot(a1, red, filltype=FillDraw(white));
dot(a2, red, filltype=FillDraw(white));
label("$\alpha$", u2, S);
label("$U$", (a1+a2)/2, S, red);
label("$\pi(U)$", (1, 0.75), N, red);

draw(Label("$\pi$", align=LeftSide), (a1+a2)/2+(0,0.5){dir(30)}..{dir(-45)}(-0.5, 1), EndArrow(arrowhead=HookHead));
