

IcarusWing.pdf: IcarusWing.tex
	rm -f IcarusWing.pdf
	pdflatex IcarusWing
	rm IcarusWing.aux IcarusWing.log
	cygstart IcarusWing.pdf

IcarusWing.tex: IcarusWing Makefile front.tex back.tex regex
	rm -f IcarusWing.tex
	sed -r -f regex	IcarusWing | cat front.tex - back.tex > IcarusWing.tex
