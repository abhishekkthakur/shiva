settings.outformat = "pdf";
settings.render = 16;

import graph3;

size(7.5cm,0);

currentprojection=orthographic(2,0,1.5);

real f(pair z) {
        real r=2pi*(z.x^2+z.y^2);
        if (r!=0)  return sin(r)/r; 
                 else return 1;
                        }
draw(surface(f,(-2.5,-2),(2.5,2),100,Spline),lightblue);
