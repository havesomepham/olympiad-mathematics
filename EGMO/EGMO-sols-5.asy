if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="EGMO-sols-5";
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
import graph; size(11.673861633776283cm);
real labelscalefactor = 0.2; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = 9.630320491405403, xmax = 21.304182125181686, ymin = -8.738510169822154, ymax = 2.1695304316289787; /* image dimensions */
pen ssssss = rgb(0.13333333333333333,0.13333333333333333,0.13333333333333333);

draw((11.1412351047602,-0.1512017899611549)--(16.843876591401337,-3.551970169245992)--(18.,-6.)--(10.,-6.)--cycle, linewidth(1.) + ssssss);
draw(arc((16.843876591401337,-3.551970169245992),0.4418198263414069,149.19027674416301,180.22058226201958)--(16.843876591401337,-3.551970169245992)--cycle, linewidth(1.) + ssssss);
draw(arc((16.843876591401337,-3.551970169245992),0.4418198263414069,-95.75049118846586,-64.72018567060927)--(16.843876591401337,-3.551970169245992)--cycle, linewidth(1.) + ssssss);
draw(arc((18.,-6.),0.4418198263414069,151.82836050812972,180.)--(18.,-6.)--cycle, linewidth(1.) + ssssss);
draw(arc((18.,-6.),0.4418198263414069,115.27981432939075,143.45145382126103)--(18.,-6.)--cycle, linewidth(1.) + ssssss);
draw(arc((11.1412351047602,-0.1512017899611549),0.4418198263414069,-55.8905746962202,-30.809723255837003)--(11.1412351047602,-0.1512017899611549)--cycle, linewidth(1.) + ssssss);
draw(arc((10.,-6.),0.4418198263414069,0.,35.18760756021013)--(10.,-6.)--cycle, linewidth(1.) + ssssss);
draw(arc((11.1412351047602,-0.1512017899611549),0.4418198263414069,-101.0409985542662,-75.960147113883)--(11.1412351047602,-0.1512017899611549)--cycle, linewidth(1.) + ssssss);
draw(arc((10.,-6.),0.4418198263414069,43.771393885523686,78.95900144573382)--(10.,-6.)--cycle, linewidth(1.) + ssssss);
/* draw figures */
draw((11.1412351047602,-0.1512017899611549)--(16.843876591401337,-3.551970169245992), linewidth(1.) + ssssss);
draw((16.843876591401337,-3.551970169245992)--(18.,-6.), linewidth(1.) + ssssss);
draw((18.,-6.)--(10.,-6.), linewidth(1.) + ssssss);
draw((10.,-6.)--(11.1412351047602,-0.1512017899611549), linewidth(1.) + ssssss);
draw((16.843876591401337,-3.551970169245992)--(13.453385092205563,-3.56502324201283), linewidth(1.));
draw(arc((16.843876591401337,-3.551970169245992),0.4418198263414069,149.19027674416301,180.22058226201958), linewidth(1.) + ssssss);
draw(arc((16.843876591401337,-3.551970169245992),0.37800140698098145,149.19027674416301,180.22058226201958), linewidth(1.) + ssssss);
draw(arc((16.843876591401337,-3.551970169245992),0.314182987620556,149.19027674416301,180.22058226201958), linewidth(1.) + ssssss);
draw(arc((16.843876591401337,-3.551970169245992),0.4418198263414069,-95.75049118846586,-64.72018567060927), linewidth(1.) + ssssss);
draw(arc((16.843876591401337,-3.551970169245992),0.37800140698098145,-95.75049118846586,-64.72018567060927), linewidth(1.) + ssssss);
draw(arc((16.843876591401337,-3.551970169245992),0.314182987620556,-95.75049118846586,-64.72018567060927), linewidth(1.) + ssssss);
draw((11.1412351047602,-0.1512017899611549)--(13.453385092205563,-3.56502324201283), linewidth(1.));
draw((10.,-6.)--(13.453385092205563,-3.56502324201283), linewidth(1.));
draw((18.,-6.)--(13.453385092205563,-3.56502324201283), linewidth(1.));
draw(arc((18.,-6.),0.4418198263414069,151.82836050812972,180.), linewidth(1.) + ssssss);
draw((17.607175965104197,-5.901432770816313)--(17.535753413304963,-5.883511456419279), linewidth(1.) + ssssss);
draw(arc((18.,-6.),0.4418198263414069,115.27981432939075,143.45145382126103), linewidth(1.) + ssssss);
draw((17.74312094344695,-5.686887605858244)--(17.696415660437303,-5.629958079650652), linewidth(1.) + ssssss);
draw((16.843876591401337,-3.551970169245992)--(16.69478439436794,-5.032478760758988), linewidth(1.));
draw((16.69478439436794,-5.032478760758988)--(18.,-6.), linewidth(1.));
draw(arc((10.,-6.),0.4418198263414069,0.,35.18760756021013), linewidth(1.) + ssssss);
draw(arc((10.,-6.),0.37800140698098145,0.,35.18760756021013), linewidth(1.) + ssssss);
draw(arc((10.,-6.),0.4418198263414069,43.771393885523686,78.95900144573382), linewidth(1.) + ssssss);
draw(arc((10.,-6.),0.37800140698098145,43.771393885523686,78.95900144573382), linewidth(1.) + ssssss);
draw((11.1412351047602,-0.1512017899611549)--(12.100594972971887,-3.9876141086758503), linewidth(1.));
draw((12.100594972971887,-3.9876141086758503)--(10.,-6.), linewidth(1.));
draw((12.100594972971887,-3.9876141086758503)--(16.69478439436794,-5.032478760758988), linewidth(1.));
draw((20.948900784883357,-6.)--(13.453385092205563,-3.56502324201283), linewidth(1.));
draw((11.1412351047602,-0.1512017899611549)--(20.948900784883357,-6.), linewidth(1.));
draw((10.,-6.)--(20.948900784883357,-6.), linewidth(1.));
draw((16.69478439436794,-5.032478760758988)--(20.948900784883357,-6.), linewidth(1.) + linetype("4 4"));
/* dots and labels */
dot((11.1412351047602,-0.1512017899611549),dotstyle);
label("$A$", (11.181598992781897,-0.04938691844118893), NE * labelscalefactor);
dot((16.843876591401337,-3.551970169245992),dotstyle);
label("$B$", (16.885983861767617,-3.456308690451579), NE * labelscalefactor);
dot((18.,-6.),dotstyle);
label("$C$", (18.034715410255274,-5.9010450628740205), NE * labelscalefactor);
dot((10.,-6.),dotstyle);
label("$D$", (9.767775548489396,-6.195591613768291), SE * labelscalefactor);
dot((13.453385092205563,-3.56502324201283),dotstyle);
label("$P$", (13.3,-4.0), NE * labelscalefactor);
dot((16.69478439436794,-5.032478760758988),linewidth(4.pt) + dotstyle);
label("$Q_1$", (16.2,-4.9), NE * labelscalefactor);
dot((12.100594972971887,-3.9876141086758503),linewidth(4.pt) + dotstyle);
label("$Q_2$", (12.14378439236985,-3.907946735156126), NE * labelscalefactor);
dot((20.948900784883357,-6.),linewidth(4.pt) + dotstyle);
label("$X$", (20.891816953929705,-5.704680695611174), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
