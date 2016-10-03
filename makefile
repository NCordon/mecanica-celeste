all: elipse

elipse: elipse_slides elipse_pres

elipse_slides:
	pandoc elipse.md -o elipse.pdf -N
elipse_pres:
	pandoc elipse_pres.md -o elipse_pres.pdf -t beamer 
