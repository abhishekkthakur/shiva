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

// For the first unit cell
//%points on cube

triple A = (0,0,0);
triple B = (0,0,4);
triple D = (0,4,0);
triple C = (0,4,4);
triple E = (4,0,0);
triple F = (4,0,4);
triple H = (4,4,0);
triple G = (4,4,4);
triple Z = (2,2,2);

// triple[] cubicCornerA={A,C,F,H,};

triple[] cubicCornerB={A,B,C,D,E,F,G,H,Z,};

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
    draw(sphere(C[i],R+1.6).surface(
                        new pen(int i, real j){return p;}
                        )
    );
  }
}

drawSpheres(cubicCornerB,cornerBR,red);

triple arcBeg=point(Q--E,0.4);
triple arcEnd=point(Q--N,0.4);
triple arcMid=point(Q--(point(E--N,0.5)),0.62);

// Front plane carbon atoms
// draw(shift(4,2,0)*scale3(0.2)*unitsphere, green);
// draw(shift(4,4,2)*scale3(0.2)*unitsphere, green);
// draw(shift(4,0,2)*scale3(0.2)*unitsphere, green);
// draw(shift(4,2,4)*scale3(0.2)*unitsphere, green);
// Back plane carbon atoms
// draw(shift(0,2,0)*scale3(0.2)*unitsphere, green);
// draw(shift(0,4,2)*scale3(0.2)*unitsphere, green);
// draw(shift(0,0,2)*scale3(0.2)*unitsphere, green);
// draw(shift(0,2,4)*scale3(0.2)*unitsphere, green);
// Side plane carbon atoms
// draw(shift(2,0,4)*scale3(0.2)*unitsphere, green);
// draw(shift(2,4,4)*scale3(0.2)*unitsphere, green);
// draw(shift(2,0,0)*scale3(0.2)*unitsphere, green);
// draw(shift(2,4,0)*scale3(0.2)*unitsphere, green);






// For the second unit cell
//%points on cube

triple A = (0,4,0);
triple B = (0,4,4);
triple D = (0,8,0);
triple C = (0,8,4);
triple E = (4,4,0);
triple F = (4,4,4);
triple H = (4,8,0);
triple G = (4,8,4);
triple Z = (2,6,2);

// triple[] cubicCornerA={A,C,F,H,};

triple[] cubicCornerB={A,B,C,D,E,F,G,H,Z,};

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
    draw(sphere(C[i],R+1.6).surface(
                        new pen(int i, real j){return p;}
                        )
    );
  }
}

drawSpheres(cubicCornerB,cornerBR,red);

triple arcBeg=point(Q--E,0.4);
triple arcEnd=point(Q--N,0.4);
triple arcMid=point(Q--(point(E--N,0.5)),0.62);

// Front plane carbon atoms
// draw(shift(4,6,0)*scale3(0.2)*unitsphere, green);
// draw(shift(4,8,2)*scale3(0.2)*unitsphere, green);
// draw(shift(4,4,2)*scale3(0.2)*unitsphere, green);
// draw(shift(4,6,4)*scale3(0.2)*unitsphere, green);
// Back plane carbon atoms
// draw(shift(0,6,0)*scale3(0.2)*unitsphere, green);
// draw(shift(0,8,2)*scale3(0.2)*unitsphere, green);
// draw(shift(0,4,2)*scale3(0.2)*unitsphere, green);
// draw(shift(0,6,4)*scale3(0.2)*unitsphere, green);
// Side plane carbon atoms
// draw(shift(2,4,4)*scale3(0.2)*unitsphere, green);
// draw(shift(2,8,4)*scale3(0.2)*unitsphere, green);
// draw(shift(2,4,0)*scale3(0.2)*unitsphere, green);
// draw(shift(2,8,0)*scale3(0.2)*unitsphere, green);





// For the third unit cell
//%points on cube

triple A = (0,8,0);
triple B = (0,8,4);
triple D = (0,12,0);
triple C = (0,12,4);
triple E = (4,8,0);
triple F = (4,8,4);
triple H = (4,12,0);
triple G = (4,12,4);
triple Z = (2,10,2);

// triple[] cubicCornerA={A,C,F,H,};

triple[] cubicCornerB={A,B,C,D,E,F,G,H,Z,};

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
    draw(sphere(C[i],R+1.6).surface(
                        new pen(int i, real j){return p;}
                        )
    );
  }
}

drawSpheres(cubicCornerB,cornerBR,red);

triple arcBeg=point(Q--E,0.4);
triple arcEnd=point(Q--N,0.4);
triple arcMid=point(Q--(point(E--N,0.5)),0.62);

// Front plane carbon atoms
// draw(shift(4,10,0)*scale3(0.2)*unitsphere, green);
// draw(shift(4,12,2)*scale3(0.2)*unitsphere, green);
// draw(shift(4,8,2)*scale3(0.2)*unitsphere, green);
// draw(shift(4,10,4)*scale3(0.2)*unitsphere, green);
// Back plane carbon atoms
// draw(shift(0,10,0)*scale3(0.2)*unitsphere, green);
// draw(shift(0,12,2)*scale3(0.2)*unitsphere, green);
// draw(shift(0,8,2)*scale3(0.2)*unitsphere, green);
// draw(shift(0,10,4)*scale3(0.2)*unitsphere, green);
// Side plane carbon atoms
// draw(shift(2,8,4)*scale3(0.2)*unitsphere, green);
// draw(shift(2,12,4)*scale3(0.2)*unitsphere, green);
// draw(shift(2,8,0)*scale3(0.2)*unitsphere, green);
// draw(shift(2,12,0)*scale3(0.2)*unitsphere, green);












// For the fourth unit cell
//%points on cube

triple A = (0,12,0);
triple B = (0,12,4);
triple D = (0,16,0);
triple C = (0,16,4);
triple E = (4,12,0);
triple F = (4,12,4);
triple H = (4,16,0);
triple G = (4,16,4);
triple Z = (2,14,2);

// triple[] cubicCornerA={A,C,F,H,};

triple[] cubicCornerB={A,B,C,D,E,F,G,H,Z,};

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
    draw(sphere(C[i],R+1.6).surface(
                        new pen(int i, real j){return p;}
                        )
    );
  }
}

drawSpheres(cubicCornerB,cornerBR,red);

triple arcBeg=point(Q--E,0.4);
triple arcEnd=point(Q--N,0.4);
triple arcMid=point(Q--(point(E--N,0.5)),0.62);

// Front plane carbon atoms
// draw(shift(4,14,0)*scale3(0.2)*unitsphere, green);
// draw(shift(4,16,2)*scale3(0.2)*unitsphere, green);
// draw(shift(4,12,2)*scale3(0.2)*unitsphere, green);
// draw(shift(4,14,4)*scale3(0.2)*unitsphere, green);
// Back plane carbon atoms
// draw(shift(0,14,0)*scale3(0.2)*unitsphere, green);
// draw(shift(0,16,2)*scale3(0.2)*unitsphere, green);
// draw(shift(0,12,2)*scale3(0.2)*unitsphere, green);
// draw(shift(0,14,4)*scale3(0.2)*unitsphere, green);
// Side plane carbon atoms
// draw(shift(2,12,4)*scale3(0.2)*unitsphere, green);
// draw(shift(2,16,4)*scale3(0.2)*unitsphere, green);
// draw(shift(2,12,0)*scale3(0.2)*unitsphere, green);
// draw(shift(2,16,0)*scale3(0.2)*unitsphere, green);







///////////////////////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////
//////////   Second layer begins here    //////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////







// For the first unit cell
//%points on cube

triple A = (4,0,0);
triple B = (4,0,4);
triple D = (4,4,0);
triple C = (4,4,4);
triple E = (8,0,0);
triple F = (8,0,4);
triple H = (8,4,0);
triple G = (8,4,4);
triple Z = (6,2,2);

// triple[] cubicCornerA={A,C,F,H,};

triple[] cubicCornerB={A,B,C,D,E,F,G,H,Z,};

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
    draw(sphere(C[i],R+1.6).surface(
                        new pen(int i, real j){return p;}
                        )
    );
  }
}

drawSpheres(cubicCornerB,cornerBR,red);

triple arcBeg=point(Q--E,0.4);
triple arcEnd=point(Q--N,0.4);
triple arcMid=point(Q--(point(E--N,0.5)),0.62);

// Front plane carbon atoms
// draw(shift(8,2,0)*scale3(0.2)*unitsphere, green);
// draw(shift(8,4,2)*scale3(0.2)*unitsphere, green);
// draw(shift(8,0,2)*scale3(0.2)*unitsphere, green);
// draw(shift(8,2,4)*scale3(0.2)*unitsphere, green);
// Back plane carbon atoms
// draw(shift(4,2,0)*scale3(0.2)*unitsphere, green);
// draw(shift(4,4,2)*scale3(0.2)*unitsphere, green);
// draw(shift(4,0,2)*scale3(0.2)*unitsphere, green);
// draw(shift(4,2,4)*scale3(0.2)*unitsphere, green);
// Side plane carbon atoms
// draw(shift(6,0,4)*scale3(0.2)*unitsphere, green);
// draw(shift(6,4,4)*scale3(0.2)*unitsphere, green);
// draw(shift(6,0,0)*scale3(0.2)*unitsphere, green);
// draw(shift(6,4,0)*scale3(0.2)*unitsphere, green);






// For the second unit cell
//%points on cube

triple A = (4,4,0);
triple B = (4,4,4);
triple D = (4,8,0);
triple C = (4,8,4);
triple E = (8,4,0);
triple F = (8,4,4);
triple H = (8,8,0);
triple G = (8,8,4);
triple Z = (6,6,2);

// triple[] cubicCornerA={A,C,F,H,};

triple[] cubicCornerB={A,B,C,D,E,F,G,H,Z,};

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
    draw(sphere(C[i],R+1.6).surface(
                        new pen(int i, real j){return p;}
                        )
    );
  }
}

drawSpheres(cubicCornerB,cornerBR,red);

triple arcBeg=point(Q--E,0.4);
triple arcEnd=point(Q--N,0.4);
triple arcMid=point(Q--(point(E--N,0.5)),0.62);

// Front plane carbon atoms
// draw(shift(8,6,0)*scale3(0.2)*unitsphere, green);
draw(shift(8,8,2)*scale3(0.2)*unitsphere, green);
draw(shift(8,4,2)*scale3(0.2)*unitsphere, green);
// draw(shift(8,6,4)*scale3(0.2)*unitsphere, green);
// Back plane carbon atoms
// draw(shift(4,6,0)*scale3(0.2)*unitsphere, green);
// draw(shift(4,8,2)*scale3(0.2)*unitsphere, green);
// draw(shift(4,4,2)*scale3(0.2)*unitsphere, green);
// draw(shift(4,6,4)*scale3(0.2)*unitsphere, green);
// Side plane carbon atoms
// draw(shift(6,4,4)*scale3(0.2)*unitsphere, green);
// draw(shift(6,8,4)*scale3(0.2)*unitsphere, green);
// draw(shift(6,4,0)*scale3(0.2)*unitsphere, green);
// draw(shift(6,8,0)*scale3(0.2)*unitsphere, green);





// For the third unit cell
//%points on cube

triple A = (4,8,0);
triple B = (4,8,4);
triple D = (4,12,0);
triple C = (4,12,4);
triple E = (8,8,0);
triple F = (8,8,4);
triple H = (8,12,0);
triple G = (8,12,4);
triple Z = (6,10,2);

// triple[] cubicCornerA={A,C,F,H,};

triple[] cubicCornerB={A,B,C,D,E,F,G,H,Z,};

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
    draw(sphere(C[i],R+1.6).surface(
                        new pen(int i, real j){return p;}
                        )
    );
  }
}

drawSpheres(cubicCornerB,cornerBR,red);

triple arcBeg=point(Q--E,0.4);
triple arcEnd=point(Q--N,0.4);
triple arcMid=point(Q--(point(E--N,0.5)),0.62);

// Front plane carbon atoms
// draw(shift(8,10,0)*scale3(0.2)*unitsphere, green);
// draw(shift(8,12,2)*scale3(0.2)*unitsphere, green);
// draw(shift(8,8,2)*scale3(0.2)*unitsphere, green);
// draw(shift(8,10,4)*scale3(0.2)*unitsphere, green);
// Back plane carbon atoms
// draw(shift(4,10,0)*scale3(0.2)*unitsphere, green);
// draw(shift(4,12,2)*scale3(0.2)*unitsphere, green);
// draw(shift(4,8,2)*scale3(0.2)*unitsphere, green);
// draw(shift(4,10,4)*scale3(0.2)*unitsphere, green);
// Side plane carbon atoms
// draw(shift(6,8,4)*scale3(0.2)*unitsphere, green);
// draw(shift(6,12,4)*scale3(0.2)*unitsphere, green);
// draw(shift(6,8,0)*scale3(0.2)*unitsphere, green);
// draw(shift(6,12,0)*scale3(0.2)*unitsphere, green);












// For the fourth unit cell
//%points on cube

triple A = (4,12,0);
triple B = (4,12,4);
triple D = (4,16,0);
triple C = (4,16,4);
triple E = (8,12,0);
triple F = (8,12,4);
triple H = (8,16,0);
triple G = (8,16,4);
triple Z = (6,14,2);

// triple[] cubicCornerA={A,C,F,H,};

triple[] cubicCornerB={A,B,C,D,E,F,G,H,Z,};

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
    draw(sphere(C[i],R+1.6).surface(
                        new pen(int i, real j){return p;}
                        )
    );
  }
}

drawSpheres(cubicCornerB,cornerBR,red);

triple arcBeg=point(Q--E,0.4);
triple arcEnd=point(Q--N,0.4);
triple arcMid=point(Q--(point(E--N,0.5)),0.62);

// Front plane carbon atoms
// draw(shift(8,14,0)*scale3(0.2)*unitsphere, green);
// draw(shift(8,16,2)*scale3(0.2)*unitsphere, green);
// draw(shift(8,12,2)*scale3(0.2)*unitsphere, green);
// draw(shift(8,14,4)*scale3(0.2)*unitsphere, green);
// Back plane carbon atoms
// draw(shift(4,14,0)*scale3(0.2)*unitsphere, green);
// draw(shift(4,16,2)*scale3(0.2)*unitsphere, green);
// draw(shift(4,12,2)*scale3(0.2)*unitsphere, green);
// draw(shift(4,14,4)*scale3(0.2)*unitsphere, green);
// Side plane carbon atoms
// draw(shift(6,12,4)*scale3(0.2)*unitsphere, green);
// draw(shift(6,16,4)*scale3(0.2)*unitsphere, green);
// draw(shift(6,12,0)*scale3(0.2)*unitsphere, green);
// draw(shift(6,16,0)*scale3(0.2)*unitsphere, green);








