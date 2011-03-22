
SUBFILES= ECKS[12]* WYE[12]* ZEE[12]* SPEECH2 ALT-ENDING CALLERS

IcarusWing.pdf: IcarusWing.tex
	rm -f IcarusWing.pdf
	pdflatex IcarusWing
	rm IcarusWing.aux IcarusWing.log
	cygstart IcarusWing.pdf

IcarusWing.tex: IcarusWing $(SUBFILES) Makefile txt2tex
	rm -f IcarusWing.tex
	./txt2tex < IcarusWing > IcarusWing.tex

publish:
	scp IcarusWing.pdf freesoftftp@www.freesoft.org:httpdocs/IcarusWing

checkin:
	ci -u IcarusWing $(SUBFILES) Makefile txt2tex TRANSCRIPTIONS
