settings.outformat = "pdf";
unitsize(3cm);

real xmin = -0.2;
real xmax = 2;
real ymin = -0.2;
real ymax = 2;
real x = 1.25;
real dx = 0.075;

Label Lx = Label("$x$", EndPoint, fontsize(10pt));
Label Ly = Label("$y$", EndPoint, fontsize(10pt));
label("$(0, 0)$", (-0.12, -0.08), fontsize(7.5pt));
label("$y = f(x)$", (2.2, 1.5), fontsize(8pt));
Label Ldx = Label("$dx$", position = MidPoint, fontsize(1pt));

path s = (0, 0){up} .. (1, 1) .. (2, sqrt(2));

fill(s -- (xmax, 0) -- cycle, mediumgray);
draw(s);

draw((xmin, 0) -- (xmax, 0), L = Lx, arrow = Arrow(TeXHead));
draw((0, ymin) -- (0, ymax), L = Ly, arrow = Arrow(TeXHead));
dot((0, 0));

real t0 = times(s, x)[0];
real t1 = times(s, x+dx)[0];

path striptop = subpath(s, t0, t1);
filldraw((x, 0) -- striptop -- (x+dx, 0) -- cycle);

Label dxlabel = Label("$dx$", position = MidPoint, align = 2N);
draw((x, sqrt(x)+0.1) -- (x+dx, sqrt(x+dx)+0.1), L = dxlabel, bar = Bars);

pen fillpen = mediumgray;
Label fxlabel = Label("$f(x)$", align=(0, 0), position = MidPoint, filltype = Fill(fillpen));
draw((x+dx+0.2, 0) -- (x+dx+0.2, sqrt(x)), L = fxlabel, arrow = Arrows(), bar = Bars);

