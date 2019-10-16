// Declaring necessary settings.
settings.outformat = "png";
unitsize(2cm);
defaultpen(fontsize(5pt));

// Defining necessary labels.
Label Lx = Label("$\epsilon$", position = EndPoint);
Label Ly = Label("$\sigma$", position = EndPoint);
Label L000 = Label("$0$", position = BeginPoint, align = 1W + S);

// Drawing the origin.
dot((0,0), L = L000);

// Drawing the 2-D coordinate axes.
draw((-0.2, 0) -- (5, 0), arrow = Arrow(TeXHead), L = Lx);
draw((0, -0.2) -- (0, 3.5), arrow = Arrow(TeXHead), L = Ly);

// Drawing a line for representing a ductile material in the stress-strain curve.
draw((0, 0) -- (1.25, 2.2){2.5, 2.75} .. (2.5, 2.75) .. (4.5, 2.3), blue);
draw((4.5, 2.3), marker = Mark[6]);

// Drawing the dashed line to to connect A, B and C with the stress and strain axis.
draw((1.25, 2.2) -- (1.25, 0), dashed+gray);
draw((1.25, 2.2) -- (0, 2.2), dashed+gray);

draw((2.8, 2.765) -- (2.8, 0), dashed+gray);
draw((2.8, 2.765) -- (0, 2.765), dashed+gray);

draw((4.5, 2.3) -- (4.5, 0), dashed+gray);
draw((4.5, 2.3) -- (0, 2.3), dashed+gray);

// Drawing the points and labels indicating yield, UTS and fracture stress.
dot((1.25, 2.2), green);
label("$A$", (1.2, 2.3));
dot((2.8, 2.765), orange);
label("$B$", (2.8, 2.9));
dot((4.5, 2.3), red);
label("$C$", (4.6, 2.3));

// Drawing dots to represent stresses and strains at points A, B and C.
dot((1.25, 0));
label("$1.25$", (1.25, -0.12));
label("$D$", (1.4, 0.12));

dot((2.8, 0));
label("2.8", (2.8, -0.12));
label("$E$", (2.95, 0.12));

dot((4.5, 0));
label("4.5", (4.5, -0.12));
label("$F$", (4.65, 0.12));

dot((0, 2.2));
label("2.2", (-0.18, 2.2));
label("$G$", (0.11, 2.1));

dot((0, 2.765));
label("2.765", (-0.18, 2.765));
label("$H$", (0.11, 2.765));

dot((0, 2.3));
label("2.3", (-0.18, 2.3));
label("$I$", (0.11, 2.4));
