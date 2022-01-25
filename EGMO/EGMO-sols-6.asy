if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="EGMO-sols-6";
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
import graph; size(10.123753920308726cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = 7.063731654343177, xmax = 17.1874855746519, ymin = -5.820682457541045, ymax = 3.6389395823773527; /* image dimensions */

pair A = (10.878098565211666,3.139870141634499), T = (10.880811501464928,-5.202060487365133), B = (8.20848114420185,-3.168717779999867), C = (15.677094135266904,-3.1763375538736915), D = (11.401625340559473,-3.1719755517912116), A_R = (13.020354799389285,3.137684527236785);

draw(A--B--C--cycle, linewidth(1.));
draw(arc(T,0.34058045148221117,90.01863355125246,142.7329480677786)--(10.880811501464928,-5.202060487365133)--cycle, linewidth(1.));
draw(arc(T,0.34058045148221117,22.896896231967986,75.61121074849405)--(10.880811501464928,-5.202060487365133)--cycle, linewidth(1.));
draw(arc(A,0.42572556435276393,-112.93671807703336,-89.98136644874755)--(10.878098565211666,3.139870141634499)--cycle, linewidth(1.));
draw(arc(A,0.42572556435276393,-75.72812154112975,-52.77276991284394)--(10.878098565211666,3.139870141634499)--cycle, linewidth(1.));
draw(arc(A_R,0.42572556435276393,-127.34414087979162,-104.38878925150584)--(13.020354799389285,3.137684527236785)--cycle, linewidth(1.));
/* draw figures */
draw(circle((11.580176761072225,-2.4606803217626867), 2.8291830938813547), linewidth(1.));
draw(circle((11.944972767257683,-1.030748648563281), 4.304913664191435), linewidth(1.));
draw(A--B, linewidth(1.));
draw(B--C, linewidth(1.));
draw(C--A, linewidth(1.));
draw(circle((11.403786593299307,-1.0535976895375687), 2.1183789647510474), linewidth(1.));
draw(A--T, linewidth(1.));
draw(T--D, linewidth(1.));
draw(B--T, linewidth(1.));
draw(T--C, linewidth(1.));
draw(arc(A,0.42572556435276393,-112.93671807703336,-89.98136644874755), linewidth(1.));
draw(arc(A,0.3703812409869046,-112.93671807703336,-89.98136644874755), linewidth(1.));
draw(arc(A,0.42572556435276393,-75.72812154112975,-52.77276991284394), linewidth(1.));
draw(arc(A,0.3703812409869046,-75.72812154112975,-52.77276991284394), linewidth(1.));
draw(A--(12.483949938909284,-3.173079782082347), linewidth(1.));
draw(circle((12.477374859985755,-9.617722455039777), 6.444646027034126), linewidth(1.));
draw((xmin, 980.1620251122107*xmin-11709.039446114062)--(xmax, 980.1620251122107*xmax-11709.039446114062), linewidth(1.)); /* line */
draw((xmin, 3.8979089708969727*xmin-47.61447324956425)--(xmax, 3.8979089708969727*xmax-47.61447324956425), linewidth(1.) + linetype("4 4")); /* line */
draw(B--A_R, linewidth(1.));
draw(arc(A_R,0.42572556435276393,-127.34414087979162,-104.38878925150584), linewidth(1.));
draw(arc(A_R,0.3703812409869046,-127.34414087979162,-104.38878925150584), linewidth(1.));
/* dots and labels */
dot(A,linewidth(4.pt) + dotstyle);
label("$A$", (10.5,3.2046995067375343), NE * labelscalefactor);
dot(T,dotstyle);
label("$T$", (10.4,-5.5), NE * labelscalefactor);
dot(B,linewidth(4.pt) + dotstyle);
label("$B$", (7.7,-3.3), NE * labelscalefactor);
dot(C,linewidth(4.pt) + dotstyle);
label("$C$", (15.8,-3.232271026276245), NE * labelscalefactor);
dot(D,linewidth(4.pt) + dotstyle);
label("$D$", (11.0,-3.1), NE * labelscalefactor);
dot((12.483949938909284,-3.173079782082347),linewidth(4.pt) + dotstyle);
label("$D'$", (12.521533389345608,-3.104553356970416), NE * labelscalefactor);
dot((12.477374859985755,-9.617722455039777),linewidth(4.pt) + dotstyle);
label("$A'$", (7.063731654343177,3.6389395823773527), NE * labelscalefactor);
dot(A_R,linewidth(4.pt) + dotstyle);
label("$A_R$", (13.1,3.1706414615893133), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
