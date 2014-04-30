.PLONY: clean

mynotes.pdf: mynotes.tex notes.tex
	pdflatex mynotes.tex
	pdflatex mynotes.tex
	make clean

clean:
	rm -f *.log *.aux *.dvi
