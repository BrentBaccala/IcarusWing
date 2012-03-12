
SUBFILES= ECKS[12]* WYE[12]* ZEE[12]* SPEECH2 ALT-ENDING CALLERS STUFF EPILOG

IcarusWing.pdf: IcarusWing.tex
	rm -f IcarusWing.pdf
	pdflatex IcarusWing
	rm IcarusWing.aux IcarusWing.log
	mv IcarusWing.pdf IcarusWing2.pdf
	pdftk IcarusWing2.pdf cat 1 3-end output IcarusWing.pdf
	rm IcarusWing2.pdf
	pdftotext IcarusWing.pdf
	cygstart IcarusWing.pdf

IcarusWing.tex: IcarusWing $(SUBFILES) Makefile txt2tex
	rm -f IcarusWing.tex
	./txt2tex < IcarusWing > IcarusWing.tex

publish:
	scp IcarusWing.pdf freesoftftp@www.freesoft.org:httpdocs/IcarusWing

checkin:
	ci -u IcarusWing $(SUBFILES) Makefile txt2tex TRANSCRIPTIONS
