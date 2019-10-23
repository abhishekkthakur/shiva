// Declaring necessary settings.
settings.outformat = "pdf";
unitsize(2cm);
defaultpen(fontsize(5pt));

// Defining necessary labels.
Label Lx = Label("$\epsilon$", position = EndPoint);
Label Ly = Label("$\sigma(MPa)$", position = EndPoint);
Label L000 = Label("$o$", position = BeginPoint, align = 1W + 2S);
// Label L000 = Label("$o$", (-0.2, -0.3));

// Drawing the 2-D coordinate axes.
draw((-0.3, 0) -- (5, 0), arrow = Arrow(TeXHead), L = Lx);
draw((0, -0.3) -- (0, 3.5), arrow = Arrow(TeXHead), L = Ly);

// Drawing a line for representing a ductile material in the stress-strain curve.
// You need to enter the desired yield-stress(ys), 2% offset-yield-stress(oys), UTS(uts) and fracture-stress(fs) and strains at these points below.
real ys=2.2;          // Yield stress value.
real oys=2.38;        // 2% offset Yield stress value.
real uts=2.765;       // Ultimate Tensile Stress value.
real fs=2.3;          // Fracture stress value.

real ys_strain=1.25;  // Strain at the Yield stress value.
real oys_strain=1.45; // Strain at the 2% offset Yield stress value.
real uts_strain=2.8;  // Strain at the Ultimate Tensile Stress value.
real fs_strain=4.5;   // Strain at the Fracture stress value.

draw((0, 0) -- (ys_strain, ys){uts_strain-0.3, uts-0.015} .. (uts_strain-0.3, uts-0.015) .. (fs_strain, fs), blue);
draw((fs_strain, fs), marker = Mark[6]);

// Drawing the dashed line to to connect A, B and C with the stress and strain axis.
// draw((1.25, ys) -- (1.25, 0), dashed+gray);
// draw((1.25, ys) -- (0, ys), dashed+gray);

// draw((2.8, 2.765) -- (2.8, 0), dashed+gray);
// draw((2.8, 2.765) -- (0, 2.765), dashed+gray);

// draw((4.5, 2.3) -- (4.5, 0), dashed+gray);
// draw((4.5, 2.3) -- (0, 2.3), dashed+gray);

// Drawing the line for ductility.
// draw((4.5, 2.3) -- (3.1932, 0), dashed+blue);
// dot((3.1932, 0));
// label("$J$", (3.35, 0.12));

// Drawing the points and labels indicating yield, UTS and fracture stress.
dot((ys_strain, ys), green);
label("$A$", (ys_strain-0.1, ys-0.05));
dot((uts_strain, uts), orange);
label("$B$", (uts_strain, uts+0.065));     // You have to set 0.065 value such that point B will fall exactly on the stress strain curve.
dot((fs_strain, fs), red);
label("$C$", (fs_strain+0.1, fs));

// Drawing dots to represent stresses and strains at points A, B and C.
// dot((1.25, 0));
// label("$1.25$", (1.25, -0.12));
// label("$D$", (1.4, 0.12));

// dot((2.8, 0));
// label("2.8", (2.8, -0.12));
// label("$E$", (2.95, 0.12));

// dot((4.5, 0));
// label("4.5", (4.5, -0.12));
// label("$F$", (4.65, 0.12));

// dot((0, ys));
// label("2.2", (-0.18, ys));
// label("$G$", (0.08, 2.1));

// dot((0, 2.765));
// label("2.765", (-0.18, 2.765));
// label("$H$", (0.08, 2.85));

// dot((0, 2.3));
// label("2.3", (-0.18, 2.3));
// label("$I$", (0.08, 2.34));

// Marking the yield stress point A' on the stress axis.
// draw((1.45, 2.38) -- (0, 2.38), dashed+gray);
// dot((0, 2.38));
// label("$2.38$", (-0.18, 2.38));
// label("$G'$", (0.1, 2.47));

// Drawing the 2% offset line for the yield stress.
// draw((0.1, 0) -- (oys_strain, oys), dashed+red);     // You can change 0.1 value here in case the 2% offset line is not parallel to the elastic straight line.
// dot((0.1, 0));                                       // Correspondingly you also have to change this 0.1 to the value used in the above line.
// dot((oys_strain, oys), darkgreen);
// label("$A'$", (1.54, oys));                          // Again here 1.54 value has to be set such that A' point lies on the stress-strain curve.
// label("$o'$", (0.15, -0.05));

// Drawing the origin.
dot((0,0), L = L000);
