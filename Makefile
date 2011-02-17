

IcarusWing.tex: IcarusWing Makefile
	sed -r -e 's/_(\w+)_/{\\it \1}/' IcarusWing > IcarusWing.tex
