.PLONY: clean

mynotes.pdf: mynotes.tex
	pdflatex mynotes.tex

clean:
	rm -f *.log *.aux *.dvi
