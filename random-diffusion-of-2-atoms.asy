settings.outformat = "pdf";
settings.render = 16;
size(300);
import solids;
import graph3;
import contour;
import three;

// Random diffusion of 1st atom.
real a;
real b;
real c;

dot((0, 0, 0));

real la = 0;
real lb = 0;
real lc = 0;

for (int i=0; i<5; ++i)
{
	for (int j=0; j<5; ++j)
	{
		for (int k=0; k<5; ++k)
		{
			a = rand();
			b = rand();
			c = rand();
			draw((la, lb, lc) -- (a, b, c), red);
			dot((a, b, c));
			la = a;
			lb = b;
			lc = c;
		}
	}
}

dot((la, lb, lc));



// Random diffusion of 2nd atom.
real a;
real b;
real c;

dot((5, 0, 0));

real la = 0;
real lb = 0;
real lc = 0;

for (int i=0; i<5; ++i)
{
	for (int j=0; j<5; ++j)
	{
		for (int k=0; k<5; ++k)
		{
			a = rand();
			b = rand();
			c = rand();
			draw((la, lb, lc) -- (a, b, c), blue);
			dot((a, b, c));
			la = a;
			lb = b;
			lc = c;
		}
	}
}

dot((la, lb, lc));

// Drawing the 3d coordinate axes.
// draw((-80, 0, 0) -- (80, 0, 0), blue, Arrows3);
// draw((0, -80, 0) -- (0, 80, 0), blue, Arrows3);
// draw((0, 0, -80) -- (0, 0, 80), blue, Arrows3);


