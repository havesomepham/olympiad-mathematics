if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="EGMO-sols-1";
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
size(9cm);

pair A = dir(120);
pair B = dir(210);
pair C = dir(330);
pair Cprime = foot(C,A,B);
pair Bprime = foot(B,A,C);
path AB = A--B;
path AC = A--C;
path cAB = Circle(midpoint(AB),distance(midpoint (AB),A));
path cAC = Circle(midpoint(AC),distance(midpoint (AC),A));
draw(A--B--C--cycle);
draw(cAB);
draw(cAC);
path CCprime = L(C, Cprime);
path BBprime = L(B, Bprime);
pair [] m = IPs(CCprime, cAB);
pair [] p = IPs(cAC, BBprime);
pair M = m[1];
pair N = m[0];
pair P = p[0];
pair Q = p[1];
draw(M--C);
draw(P--B);
draw(circumcircle(M,N,P), dashed);

pair [] H = IPs(CCprime, BBprime);
pair H = H[0];
pair Aprime = foot(A,B,C);
draw(A--Aprime);
draw(rightanglemark(B, Cprime, C, 3));
draw(rightanglemark(B, Bprime, A, 3));
draw(rightanglemark(A, Aprime, C, 3));

dot("$A$", A, 1.5dir(90));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$A'$", Aprime, 1.5dir(-100));
dot("$B'$", Bprime, 2dir(0));
dot("$C'$", Cprime, dir(30));
dot("$H$", H, 2dir(20));
dot("$M$", M, dir(M));
dot("$N$", N, dir(-90));
dot("$P$", P, dir(P));
dot("$Q$", Q, 2dir(-100));
