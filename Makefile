

IcarusWing.pdf: IcarusWing.tex
	rm -f IcarusWing.pdf
	pdflatex IcarusWing
	rm IcarusWing.aux IcarusWing.log
	cygstart IcarusWing.pdf

IcarusWing.tex: IcarusWing Makefile front.tex back.tex txt2tex
	rm -f IcarusWing.tex
	./txt2tex IcarusWing > IcarusWing.tex
