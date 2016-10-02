all: pandoc

pandoc: elipse.md
	pandoc elipse.md -o elipse.pdf -N
