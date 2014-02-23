

IcarusWing.pdf: IcarusWing.tex
	rm -f IcarusWing.pdf
	pdflatex IcarusWing
	rm IcarusWing.aux IcarusWing.log
	mv IcarusWing.pdf IcarusWing2.pdf
	pdftk IcarusWing2.pdf cat 1 3-end output IcarusWing.pdf
	pdftk IcarusWing2.pdf cat 1 2 3 2 4 2 5 2 6-end output IcarusWing-book.pdf
	#rm IcarusWing2.pdf
	pdftotext IcarusWing.pdf

IcarusWing.html: IcarusWing txt2htm
	./txt2htm < IcarusWing > IcarusWing.html

IcarusWing.tex: IcarusWing Makefile txt2tex
	rm -f IcarusWing.tex
	./txt2tex < IcarusWing > IcarusWing.tex

publish: IcarusWing.pdf IcarusWing.html
	scp IcarusWing.pdf IcarusWing.html www:/var/www/IcarusWing

checkin:
	ci -u IcarusWing Makefile txt2tex TRANSCRIPTIONS
