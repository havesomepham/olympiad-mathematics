if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="EGMO-sols-2";
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

import graph;
import olympiad;
import cse5;
defaultpen(fontsize(10));
usepackage("amsmath");
usepackage("amssymb");
settings.tex="latex";
settings.outformat="pdf";
size(9cm);

pair A = dir(120);
pair B = dir(210);
pair C = dir(330);
pair H = orthocenter(A,B,C);
pair O = circumcenter(A,B,C);
pair Ao = circumcenter(H,B,C);
pair Bo = circumcenter(H,A,C);
pair Co = circumcenter(H,A,B);

draw(A--B--C--cycle, lightred+1.3);
draw(circumcircle(A,B,C));
draw(circumcircle(H,B,C));
draw(circumcircle(H,A,C));
draw(circumcircle(H,A,B));
draw(Ao--O);
draw(Bo--O);
draw(Co--O);
draw(Ao--Bo--Co--cycle, lightblue+1.3);

dot("$A$", A, 2*dir(0));
dot("$B$", B, 2*dir(-30));
dot("$C$", C, 2*dir(0));
dot("$H$", H, dir(-20));
dot("$O$", O, dir(90));
dot("$A'$", Ao, dir(Ao));
dot("$B'$", Bo, dir(Bo));
dot("$C'$", Co, dir(Co));
