if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="EGMO-sols-4";
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
import graph; size(10cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
defaultpen(fontsize(10pt));
pen dotstyle = black; /* point style */
real xmin = 10.089067137849216, xmax = 16, ymin = -5, ymax = 0.7001096900360797; /* image dimensions */
pen zzttqq = rgb(0.6,0.2,0.); pen ttttff = rgb(0.2,0.2,1.);
pair A = (13.48692277822345,-4.931143874499144), B = (10.692916432535156,-1.4356945224882818), C = (15.579773773604833,-0.08484925111597325), D = (12.390949065760713,-0.9663173352412872), F = (11.939198252148614,-2.994858833447501), H = (12.768459041839456,-2.3320084599200497), P = (13.492744683604744,-2.9995412667249157), Q = (12.766453676805392,-2.9973522049045127), R = (12.770464406873522,-1.666664714935594);

draw(A--B--C--cycle, zzttqq);
draw(D--(14.320000108261523,-3.0020346381819274)--F--cycle, ttttff);
/* draw figures */
draw(A--B, zzttqq);
draw(B--C, zzttqq);
draw(C--A, zzttqq);
draw(A--D);
draw(C--F);
draw(B--(14.320000108261523,-3.0020346381819274));
draw((14.320000108261523,-3.0020346381819274)--F);
draw(A--P);
draw(R--Q);
draw(D--P, linetype("2 2"));
draw(D--F);
draw(D--(14.320000108261523,-3.0020346381819274));
draw(D--(14.320000108261523,-3.0020346381819274), ttttff);
draw((14.320000108261523,-3.0020346381819274)--F, ttttff);
draw(F--D, ttttff);
draw(circle(H, 0.6653467670913191));
draw(circle(A, 1.931611381448781), linetype("2 2"));

/* dots and labels */
dot(A,dotstyle);
label("$A$", (13.53890942283245,-4.964308771436398), NE * labelscalefactor);
dot(B,dotstyle);
label("$B$", B, NW * labelscalefactor);
dot(C,dotstyle);
label("$C$", (15.603250532072417,-0.028808599210378677), NE * labelscalefactor);
dot(D,linewidth(4.pt) + dotstyle);
label("$D$", (12.33146462308832,-0.8857049087062152), NE * labelscalefactor);
dot((14.320000108261523,-3.0020346381819274),linewidth(4.pt) + dotstyle);
label("$E$", (14.390241470578314,-3.066895514695618), NE * labelscalefactor);
dot(F,linewidth(4.pt) + dotstyle);
label("$F$", F, SW);
dot(H,linewidth(4.pt) + dotstyle);
label("$H$", H, dir(75)*2);
dot(P,linewidth(4.pt) + dotstyle);
label("$P$", P, NE * labelscalefactor);
dot(Q,linewidth(4.pt) + dotstyle);
label("$Q$", Q, NW * labelscalefactor);
dot(R,linewidth(4.pt) + dotstyle);
label("$R$", R, dir(60));
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
