if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="EGMO-sols-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

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
