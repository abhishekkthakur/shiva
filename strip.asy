settings.outformat = "pdf";
unitsize(4cm);

real xmin = -0.1;
real xmax = 2;
real ymin = -0.1;
real ymax = 2;
real x = 1.4;
real dx = 0.05;
arrowbar axisarrow = Arrow(TeXHead);

path s = (0, 0){up} .. (1, 1) .. (xmax, sqrt(xmax));
fill(s -- (xmax, 0) -- cycle, mediumgray);
draw(s);

draw((0, 0) -- (xmax, 0), arrow = axisarrow);
draw((0, 0) -- (0, ymax), arrow = axisarrow);

draw((x, 0) -- (x, sqrt(x)) -- (x+dx, sqrt(x+dx)) -- (x+dx, 0), red);

