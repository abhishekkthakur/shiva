settings.outformat = "pdf";
unitsize(1cm);

draw((-0.1, 0) -- (5, 0), arrow = Arrow(TeXHead));
draw((0, -0.1) -- (0, 5), arrow = Arrow(TeXHead));

draw((0, 0){up} .. (1, 1) .. {right}(2, sqrt(2)));

fill((0, 0){up} .. (1, 1) .. {right}(2, sqrt(2)) -- (2, 0) -- cycle, mediumgrey);
