all: cv example

cv: cv.pdf

cv.pdf: cv.tex
	pdflatex cv.tex

example: template.pdf

template.pdf: template.tex
	pdflatex template.tex

clean:
	rm -rf *.out *.dvi *.log *.out *.aux *.pdf
