if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="RANDOM-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

defaultpen(fontsize(10pt));
size(8cm); // set a reasonable default
usepackage("amsmath");
usepackage("amssymb");
settings.tex="pdflatex";
settings.outformat="pdf";
// Replacement for olympiad+cse5 which is not standard
import geometry;
// recalibrate fill and filldraw for conics
void filldraw(picture pic = currentpicture, conic g, pen fillpen=defaultpen, pen drawpen=defaultpen)
{ filldraw(pic, (path) g, fillpen, drawpen); }
void fill(picture pic = currentpicture, conic g, pen p=defaultpen)
{ filldraw(pic, (path) g, p); }
// some geometry
pair foot(pair P, pair A, pair B) { return foot(triangle(A,B,P).VC); }
pair orthocenter(pair A, pair B, pair C) { return orthocentercenter(A,B,C); }
pair centroid(pair A, pair B, pair C) { return (A+B+C)/3; }
// cse5 abbrevations
path CP(pair P, pair A) { return circle(P, abs(A-P)); }
path CR(pair P, real r) { return circle(P, r); }
pair IP(path p, path q) { return intersectionpoints(p,q)[0]; }
pair OP(path p, path q) { return intersectionpoints(p,q)[1]; }
path Line(pair A, pair B, real a=0.6, real b=a) { return (a*(A-B)+A)--(b*(B-A)+B); }
// cse5 more useful functions
picture CC() {
picture p=rotate(0)*currentpicture;
currentpicture.erase();
return p;
}
pair MP(Label s, pair A, pair B = plain.S, pen p = defaultpen) {
Label L = s;
L.s = "$"+s.s+"$";
label(L, A, B, p);
return A;
}
pair Drawing(Label s = "", pair A, pair B = plain.S, pen p = defaultpen) {
dot(MP(s, A, B, p), p);
return A;
}
path Drawing(path g, pen p = defaultpen, arrowbar ar = None) {
draw(g, p, ar);
return g;
}

/* Geogebra to Asymptote conversion, documentation at artofproblemsolving.com/Wiki go to User:Azjps/geogebra */
import graph; size(6cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -3.598272074286483, xmax = 6.317221331944386, ymin = -3.8871212599842413, ymax = 3.3759776600798737; /* image dimensions */

pair O = (0.,0.), B = (-1.9996096666319851,-2.2364170409634965), C = (2.0003902724334726,-2.2357188459091937), A = (-1.2827507406522278,2.711927457981898), Q = (2.500390264816655,-2.235631571527406), D = (2.2364170409634965,-1.999609666631985), P = (-1.4834712399265602,1.326390998277188);

draw((2.000323982402849,-1.8559394177669797)--(1.620544554260635,-1.8560057077976033)--(1.6206108442912586,-2.235785135939817)--C--cycle);
/* draw figures */
draw(circle(O, 3.));
draw(A--B);
draw(B--C);
draw(C--A);
draw(B--(1.9996096666319851,2.2364170409634965));
draw(B--Q);
draw((-2.2364170409634965,1.9996096666319851)--Q);
draw((1.9996096666319851,2.2364170409634965)--C);
/* dots and labels */
dot(O,linewidth(4.pt) + dotstyle);
label("$O$", (-0.2, -0.45), NE * labelscalefactor);
dot(B,dotstyle);
label("$B$", (-2.4,-2.5), NE * labelscalefactor);
dot(C,linewidth(4.pt) + dotstyle);
label("$C$", (2.053559167265112,-2.57), NE * labelscalefactor);
dot(A,linewidth(4.pt) + dotstyle);
label("$A$", (-1.4,2.8), NE * labelscalefactor);
dot((1.9996096666319851,2.2364170409634965),linewidth(4.pt) + dotstyle);
label("$B'$", (2.0287704337495347,2.3017992077381955), NE * labelscalefactor);
dot(Q,linewidth(4.pt) + dotstyle);
label("$Q$", (2.6,-2.4080601602214693), NE * labelscalefactor);
dot(D,linewidth(4.pt) + dotstyle);
label("$D$", (2.3262352359364606,-2.0844920686596704), NE * labelscalefactor);
dot((-2.2364170409634965,1.9996096666319851),linewidth(4.pt) + dotstyle);
label("$D'$", (-2.5,2.062174783754283), NE * labelscalefactor);
dot(P,linewidth(4.pt) + dotstyle);
label("$P$", (-1.4003377025719743,1.3515644229744037), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
