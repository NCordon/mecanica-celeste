all: elipse

elipse: new_slides old_slides new_elipse old_elipse

new_slides:
	pandoc elipse_pres.md -o elipse_pres.pdf -t beamer
old_slides:
	pandoc elipse_pres_old.md -o elipse_pres_old.pdf -t beamer
new_elipse:
	pandoc elipse.md -o elipse.pdf -N
old_elipse:
	pandoc elipse_old.md -o elipse_old.pdf -N
