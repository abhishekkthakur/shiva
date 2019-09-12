settings.outformat = "pdf";
unitsize(6cm);

draw((-10, 0) -- (10, 0), arrow = Arrow(HookHead));
draw((0, -10) -- (0, 10), arrow = Arrow(HookHead));

draw((0, 0){1, 1} .. {1, 0}(pi/2, 1) .. {1, -1}(pi, 0) .. {1, 0}(3*pi/2, -1) .. {1, 1}(2*pi, 0), marker = MarkFill[0]);

draw((0, 0){-1, 0} .. {-1, -3}(-1, -1){1, 0} .. {1, -3}(0, -2), marker = MarkFill[0]);
