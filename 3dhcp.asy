settings.outformat = "pdf";
settings.render = 16;
size(300);
import solids;

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

//%points on cube

triple A = (0,0,0);
triple B = (4,0,0);
triple D = (2,-3.464,0);
triple C = (-2,-3.464,0);
triple E = (-4,0,0);
triple F = (-2,3.464,0);
triple H = (2,3.464,0);
triple cl1 = (-2,-1.15,3.266);
triple cl2 = (2,-1.15,3.266);
triple cl3 = (0,2.31,3.266);

triple A1 = (0,0,6.532);
triple B1 = (4,0,6.532);
triple D1 = (2,-3.464,6.532);
triple C1 = (-2,-3.464,6.532);
triple E1 = (-4,0,6.532);
triple F1 = (-2,3.464,6.532);
triple H1 = (2,3.464,6.532);


// triple[] cubicCornerA={A,C,F,H,};

triple[] cubicCornerB={A,B,C,D,E,F,H,A1,B1,C1,D1,E1,F1,H1,cl1,cl2,cl3};

real cornerAR=0.05;
real cornerBR=0.2;
real faceCR=0.2;
real connR=faceCR;

pen backPen=gray(0.5)+dashed+1bp;
pen frontPen=gray(0.2)+dashed+1bp;

draw(A--A1,frontPen);
draw(B--B1,frontPen);
draw(C--C1,frontPen);
draw(D--D1,frontPen);
draw(E--E1,frontPen);
draw(F--F1,frontPen);
draw(H--H1,frontPen);
draw(cl1--cl2--cl3--cycle,backPen);
draw(B--D--C--E--F--H--cycle,frontPen);
draw(B1--D1--C1--E1--F1--H1--cycle,frontPen);

pen connectPen=lightgray;

void drawSpheres(triple[] C, real R, pen p=currentpen){
  for(int i=0;i<C.length;++i){
    draw(sphere(C[i],R+0.5).surface(
                        new pen(int i, real j){return p;}
                        )
    );
  }
}

drawSpheres(cubicCornerB,cornerBR,orange);

