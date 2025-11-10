import geometry;

size(7cm);

point p2=(point)(0,0);
point p1=(point)(-3,0);
point p3=(point)(3,0);

coordsys R2=cartesiansystem(p2, i=(1, 0), j=(0, 1));
coordsys R1=cartesiansystem(p1, i=(1, 0), j=(0, 1));
coordsys R3=cartesiansystem(p3, i=(1, 0), j=(0, 1));

circle c1=circle(p1, 1);
circle c2=circle(p2, 1);
circle c3=circle(p3, 1);

point e1=point(R1, R1.polar(1, radians(110)));
point e2=point(R1, R1.polar(1, radians(-20)));
point e3=point(R2, R2.polar(1, radians(-120)));
point e4=point(R2, R2.polar(1, radians(30)));
point mid=(e3 + e4)/2;
point e5=((mid - p2) / length((mid - p2)));
point e6=point(R3, R3.polar(1, radians(180)));
point e7=point(R3, R3.polar(1, radians(70)));
point mid2=(e6+e7)/2;


draw(c1);
draw(c2);
draw(c3);

pen p=black;
draw(e1--e2, red);
draw(e3--e4, red);
draw(e6--e7, red, StickIntervalMarker(2,2,grey,size=2mm));
draw(p2--e5, dashed);




dot(e1, p);
dot(e2, p);
dot(mid, p);
dot(e5, p);
dot(mid2, p);

