settings.outformat = "pdf";
size(4cm);

draw((-0.5, 0) -- (10, 0), arrow = Arrow(TeXHead));
draw((0, -5) -- (0, 5), arrow = Arrow(TeXHead));

draw((0.17, 4.5) .. (0.25, 2) .. (0.28, 0){down} .. {right}(2, -4){right} .. (4, -1.5) .. (7, -0.4) .. (9, -0.2){right});
