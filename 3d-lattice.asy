settings.outformat = "pdf";
settings.render = 16;
size(300);
import solids;
import graph3;
import contour;
import three;

for (int i=0; i<5; ++i)
{
	for (int j=0; j<5; ++j)
	{
		for (int k=0; k<5; ++k)
		{
			dot((i, j, k));
		}
	}
}
