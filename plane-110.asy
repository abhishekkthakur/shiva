settings.outformat = "pdf";
settings.render = 16;
size(300);
import solids;
import graph3;
import contour;
import three;

currentprojection=orthographic (
camera=(8,5,4),
up=(0,0,1),
target=(2,2,2),
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

//%points on cube

triple A = (0,0,0);
triple B = (0,0,1);
triple D = (0,1,0);
triple C = (0,1,1);
triple E = (1,0,0);
triple F = (1,0,1);
triple H = (1,1,0);
triple G = (1,1,1);
triple Z = (0.5,0.5,0.5);

//Creating point labels
Label L000 = Label("$(0,0,0)$", position=BeginPoint);
Label L100 = Label("$(1,0,0)$", position=BeginPoint);
Label L010 = Label("$(0,1,0)$", position=BeginPoint);
Label L001 = Label("$(0,0,1)$", position=BeginPoint);
Label L110 = Label("$(1,1,0)$", position=BeginPoint);
Label L101 = Label("$(1,0,1)$", position=BeginPoint);
Label L011 = Label("$(0,1,1)$", position=BeginPoint);
Label L111 = Label("$(1,1,1)$", position=BeginPoint);

// Creating pens for drawing
pen backPen=gray(0.5)+dashed+1bp;
pen frontPen=gray(0.1)+solid+1bp;
pen patternPen=gray(0.3)+solid+1bp;

// Drawing dots at the vertices of the cube.
dot((0,0,0), red, L=L000);
dot((1,0,0), red, L=L100);
dot((0,1,0), red, L=L010);
dot((0,0,1), red, L=L001);
dot((1,1,0), red, L=L110);
dot((1,0,1), red, L=L101);
dot((0,1,1), red, L=L011);
dot((1,1,1), red, L=L111);

// Drawing edges of the cube.
draw(D--A--B,frontPen);
draw(A--E,frontPen);
draw(B--C--D,frontPen);
draw(E--F--G--H--cycle,frontPen);
draw(B--F,frontPen);
draw(C--G,frontPen);
draw(D--H,frontPen);

// Here specify the four corner of the plane you wish to draw.
pen planeopacity = opacity(0.67);
path3 myplane = (0,0,0)--(1,0,0)--(1,1,0)--(0,1,0)--cycle;
draw(surface(myplane), planeopacity);
