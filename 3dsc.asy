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
triple B = (0,0,4);
triple D = (0,4,0);
triple C = (0,4,4);
triple E = (4,0,0);
triple F = (4,0,4);
triple H = (4,4,0);
triple G = (4,4,4);

// triple[] cubicCornerA={A,C,F,H,};

triple[] cubicCornerB={A,B,C,D,E,F,G,H,};

//label("$A$",A,Y+Z);
//label("$B$",B,3Y+3Z);
//label("$C$",C,Y+Z);
//label("$D$",D,3Y+3Z);
//label("$E$",E,3Z-3Y);
//label("$F$",F,Z-Y);
//label("$G$",G,3Z-2X);
//label("$H$",H,Y-Z);

//%center of faces

triple I = (A+B+C+D)/4; //%center of face ABCD
triple J = (E+F+G+H)/4; //%center of face EFGH
triple K = (D+C+G+H)/4; //%center of face DCGH
triple L = (A+B+F+E)/4; //%center of face ABFE
triple M = (C+B+G+F)/4; //%center of face CBGF
triple N = (D+A+E+H)/4; //%center of face DAEH

triple[] faceCenter={  
  I,J,K,L,M,N,
};

triple O = (1,1,3);
triple P = (1,3,1);
triple Q = (3,1,1);
triple R = (3,3,3);

triple[] connectors={  
  O,P,Q,R,
};

real cornerAR=0.05;
real cornerBR=0.2;
real faceCR=0.2;
real connR=faceCR;

pen backPen=gray(0.5)+dashed+1bp;
pen frontPen=gray(0.2)+dashed+1bp;

draw(D--A--B,backPen);
draw(A--E,backPen);

draw(B--C--D,frontPen);
draw(E--F--G--H--cycle,frontPen);
draw(A--E,frontPen);
draw(B--F,frontPen);
draw(C--G,frontPen);
draw(D--H,frontPen);

real cylR=0.062;

void Draw(guide3 g,pen p=currentpen){
  draw(
    cylinder(
      point(g,0),cylR,arclength(g),point(g,1)-point(g,0)
    ).surface(
               new pen(int i, real j){
                 return p;
               }
             )
  );
}

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

triple arcBeg=point(Q--E,0.4);
triple arcEnd=point(Q--N,0.4);
triple arcMid=point(Q--(point(E--N,0.5)),0.62);
