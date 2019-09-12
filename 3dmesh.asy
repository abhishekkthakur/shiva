settings.outformat = "pdf";
settings.render = 32;

import graph3;
import contour;
size(7.5cm,0);
size3(8cm,10cm,12cm,IgnoreAspect);

real f(pair z) {
  return 2z.x^2-z.x+z.y^2;
}
real[] lignesniveaux={50,75,100,125,150,175,200,225};

currentprojection=orthographic(-25,-15,600);
limits((0,0,0),(8,10,300));

xaxis3(Label("$x$",position=MidPoint,align=SE),
       OutTicks(Step=2));
yaxis3(Label("$y$",position=MidPoint,align=SW),
       OutTicks(Step=2));
zaxis3(Label("$z=2x^2-x+y^2$",position=EndPoint,align=4N+E),
       Bounds(Min,Max),
       InTicks(Step=100,Label(align=Y)));

draw(surface(f,(0,0),(8,10),nx=10,Spline),
     white,meshpen=.8bp+red,nolight);

Label [] L=sequence(new Label(int i) {
    return scale(0.75)*Label(format("$z=%g$",lignesniveaux[i]),
                              align=E,EndPoint);
    },8);
draw(L,lift(f,contour(f,(0,0),(8,10),lignesniveaux)),1.5bp+blue);
