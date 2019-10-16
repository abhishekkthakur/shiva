// Declaring necessary settings.
settings.outformat = "pdf";
unitsize(2cm);

// Defining necessary labels.
Label Lx = Label("$\epsilon$", position = EndPoint);
Label Ly = Label("$\sigma$", position = EndPoint);
Label L000 = Label("$(0,0)$", position = BeginPoint, align = 1W + S);

// Drawing the origin.
dot((0,0), L = L000);

// Drawing the 2-D coordinate axes.
draw((-0.4, 0) -- (5, 0), arrow = Arrow(TeXHead), L = Lx);
draw((0, -0.4) -- (0, 5), arrow = Arrow(TeXHead), L = Ly);

// Drawing a line for representing a ductile material in the stress-strain curve.
draw((0, 0) -- (1.25, 2.2){2.5, 2.75} .. (2.5, 2.75) .. (4.5, 2.3), blue);
draw((4.5, 2.3), marker = Mark[6]);
label("$Fracture$", (4.5, 2.2));
