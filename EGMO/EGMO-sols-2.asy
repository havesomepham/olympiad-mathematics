if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="EGMO-sols-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

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
