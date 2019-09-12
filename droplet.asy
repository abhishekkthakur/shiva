settings.outformat = "pdf";
size(2cm);

draw((-10, 0) -- (10, 0), arrow = Arrow(TeXHead));
draw((0, -10) -- (0, 10), arrow = Arrow(TeXHead));

draw((3, 0) -- (0, 6) -- (-3, 0){down} .. {up}(3, 0));

fill((3, 0) -- (0, 6) -- (-3, 0){down} .. {up}(3, 0) -- cycle, magenta);
