

IcarusWing.pdf: IcarusWing.tex
	pdflatex IcarusWing

IcarusWing.tex: IcarusWing Makefile front.tex back.tex
	sed -r -e 's/_(\w+)_/{\\it \1}/' -e 's/_//g' IcarusWing | cat front.tex - back.tex > IcarusWing.tex
