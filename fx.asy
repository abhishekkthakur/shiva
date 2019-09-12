settings.outformat = "pdf";
unitsize(3cm);

Label L = Label("$f(x)$", align = (0, 0), position = MidPoint, filltype = Fill(green));

draw((0, 0) -- (0, 2), L = L, arrow = Arrow(TeXHead), bar = Bars);
