settings.outformat = "pdf";
size(4cm, 3cm, keepAspect = false);
unitsize(1cm);

import graph;
Label Lx = Label("$x$", position = EndPoint);
Label Ly = Label("$y$", position = EndPoint);
Label curve = Label("$Function$", position = MidPoint);

pair f(real t)
{
	return (1/t, sin(t));
}

draw(graph(f, 1, 10^4, n = 5*10^5), thin(), L = curve);

draw((-2, 0) -- (3, 0), arrow = Arrow(TeXHead), L = Lx);
draw((0, -2) -- (0, 3), arrow = Arrow(TeXHead), L = Ly);
