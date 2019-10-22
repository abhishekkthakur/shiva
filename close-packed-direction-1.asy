settings.outformat = "pdf";
settings.render = 16;
size(300);
import solids;
import graph3;
import contour;
import three;

currentprojection=orthographic (
camera=(8,5,4),
zoom=0.5
);

// save predefined 2D orientation vectors
pair NN=N;
pair SS=S;
pair EE=E;
pair WW=W;

// Drawing spheres for the middle 'B' - type plane.
draw(shift(0, 0, 0)*scale3(2)*unitsphere, red);
draw(shift(4, 0, 0)*scale3(2)*unitsphere, red);
draw(shift(6, 3.464, 0)*scale3(2)*unitsphere, red);
draw(shift(4, 6.928, 0)*scale3(2)*unitsphere, red);
draw(shift(0, 6.928, 0)*scale3(2)*unitsphere, red);
draw(shift(-2, 3.464, 0)*scale3(2)*unitsphere, red);
draw(shift(2, 3.464, 0)*scale3(2)*unitsphere, red);

// Drawing sphere for the upper 'A' - type plane.
draw(shift(2, 1.154667, 3.2)*scale3(2)*unitsphere, cyan);
draw(shift(4, 4.618667, 3.2)*scale3(2)*unitsphere, cyan);
draw(shift(0, 4.618667, 3.2)*scale3(2)*unitsphere, cyan);

// Drawing sphere for the lower 'A' - type plane.
draw(shift(2, 1.154667, -3.2)*scale3(2)*unitsphere, cyan);
draw(shift(4, 4.618667, -3.2)*scale3(2)*unitsphere, cyan);
draw(shift(0, 4.618667, -3.2)*scale3(2)*unitsphere, cyan);


