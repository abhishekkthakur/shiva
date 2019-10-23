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

// Label of the axes.
Label Lx = Label("$x$", position = EndPoint);
Label Ly = Label("$y$", position = EndPoint);
Label Lz = Label("$z$", position = EndPoint);

// Drawing the axes
draw((-0.1,0,0)--(1.5,0,0), arrow=Arrow3(), L=Lx);
draw((0,-0.1,0)--(0,1.5,0), arrow=Arrow3(), L=Ly);
draw((0,0,-0.1)--(0,0,1.5), arrow=Arrow3(), L=Lz);

int number=2;

label("%d", number, (2, 2, 2));
