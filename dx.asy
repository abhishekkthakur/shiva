settings.outformat = "pdf";
unitsize(0.6cm);

Label L = Label("$dx$", position = MidPoint, fontsize(0.5pt));

draw((0, 0) -- (1, 0), L = L, bar = Bars);
