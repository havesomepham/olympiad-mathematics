if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="RANDOM-1";
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
real labelscalefactor = 0.3; /* changes label-to-point distance */
pen dps = linewidth(0.2) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -0.42556342993481877, xmax = 2.1913854979166096, ymin = -0.25556833596774753, ymax = 1.2709852052789172; /* image dimensions */
pen zzttqq = rgb(0.6,0.2,0); pen cqcqcq = rgb(0.7529411764705882,0.7529411764705882,0.7529411764705882);

draw((0,1)--(1,1)--(1,0)--(0,0)--cycle, linewidth(1) + zzttqq);
/* draw grid of horizontal/vertical lines */
pen gridstyle = linewidth(0.7) + cqcqcq; real gridx = 0.2, gridy = 0.2; /* grid intervals */
for(real i = ceil(xmin/gridx)*gridx; i <= floor(xmax/gridx)*gridx; i += gridx)
draw((i,ymin)--(i,ymax), gridstyle);
for(real i = ceil(ymin/gridy)*gridy; i <= floor(ymax/gridy)*gridy; i += gridy)
draw((xmin,i)--(xmax,i), gridstyle);
/* end grid */

Label laxis; laxis.p = fontsize(10);
xaxis(xmin, xmax, Ticks(laxis, Step = 0.5, Size = 2, NoZero),EndArrow(6), above = true);
yaxis(ymin, ymax, Ticks(laxis, Step = 0.5, Size = 2, NoZero),EndArrow(6), above = true); /* draws axes; NoZero hides '0' label */
/* draw figures */
draw((0,1)--(1,1), linewidth(1) + zzttqq);
draw((1,1)--(1,0), linewidth(1) + zzttqq);
draw((1,0)--(0,0), linewidth(1) + zzttqq);
draw((0,0)--(0,1), linewidth(1) + zzttqq);
draw((1,1)--(0,0), linewidth(1));
draw((0,0.5)--(1,0), linewidth(1));
draw((0,0.3333333333333333)--(0.3333333333333333,0.3333333333333333), linewidth(1));
draw((0,0.3333333333333333)--(1,0), linewidth(1));
draw((0,0.25)--(0.25,0.25), linewidth(1));
/* dots and labels */
dot((1,0),dotstyle);
label("$A$", (1.0301144111825382,0.02520847608297849), NE * labelscalefactor);
dot((1,1),dotstyle);
label("$B$", (1.0110324919169549,1.028372231759358), NE * labelscalefactor);
dot((0,1),dotstyle);
label("$C$", (0.010594724707085943,1.028372231759358), NE * labelscalefactor);
dot((0,0),linewidth(4pt) + dotstyle);
label("$D$", (0.016046701640109753,-0.06202315484540235), SE * labelscalefactor);
dot((0,0.5),linewidth(4pt) + dotstyle);
label("$Q_1$", (-0.08208888315431881,0.507708434655585), NE);
dot((0.3333333333333333,0.3333333333333333),linewidth(4pt) + dotstyle);
label("$P_1$", (0.35406927148758593,0.27327342653556147), NE * labelscalefactor);
dot((0,0.3333333333333333),linewidth(4pt) + dotstyle);
label("$Q_2$", (-0.07936289468780691,0.3305191843323114), W * labelscalefactor);
dot((0.25,0.25),linewidth(4pt) + dotstyle);
label("$P_2$", (0.2750156059587407,0.18331580714066875), S * labelscalefactor);
dot((0,0.25),linewidth(4pt) + dotstyle);
label("$Q_3$", (-0.0739109177547831,0.2569174957364901), W * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
