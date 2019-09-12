settings.outformat = "pdf";
unitsize(4cm);

real xmin = -0.2;
real xmax = 2;
real ymin = -0.2;
real ymax = 2;
arrowbar axisarrow = Arrow(TeXHead);

draw((xmin, 0) -- (xmax, 0), arrow = axisarrow);
draw((0, ymin) -- (0, ymax), arrow = axisarrow);

path s = (0, 0){up} .. (0.5, sqrt(0.5)) .. (1, 1) .. (xmax, sqrt(xmax));
fill(s -- (xmax, 0) -- cycle, lightred);
draw(s);

real x = 1.4;
real dx = 0.05;

path striptop = subpath(s, x, x+dx);

draw((x, 0) -- striptop -- (x+dx, 0) -- cycle, blue);
