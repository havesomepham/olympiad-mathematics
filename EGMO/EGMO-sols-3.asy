if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="EGMO-sols-3";
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
defaultpen(fontsize(10pt));
usepackage("amsmath");
usepackage("amssymb");
settings.tex="latex";
settings.outformat="pdf";
size(10cm);

pair A = dir(120);
pair B = dir(210);
pair C = dir(330);
path ABC = circumcircle(A,B,C);
draw(A--B--C--cycle);
draw(ABC);
pair K = foot(A,B,C);
pair Aprime = midpoint(B--C);
pair Bprime = midpoint(C--A);
pair Cprime = midpoint(A--B);
draw(circumcircle(Aprime,Bprime,Cprime));
pair G = centroid(A,B,C);
draw(A--Aprime);
draw(B--Bprime);
draw(C--Cprime);
draw(Aprime--Bprime);
draw(Bprime--Cprime);
draw(Cprime--Aprime);
path AX = L(A, (1, ypart(A)));
pair [] X = IPs(AX,ABC);
pair X = X[1];
draw(A--X);
draw(K--X);
draw(A--K);
draw(rightanglemark(A,K,C,3));
draw(rightanglemark(K,A,X,3));

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$K$", K, dir(K));
dot("$A'$", Aprime, dir(Aprime));
dot("$B'$", Bprime, dir(Bprime));
dot("$C'$", Cprime, dir(Cprime));
dot("$G$", G, dir(0));
dot("$X$", X, dir(X));
