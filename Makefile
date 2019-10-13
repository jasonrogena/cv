all: cv example

output: output
	mkdir output

cv: output output/cv.pdf

output/cv.pdf: cv.tex
	pdflatex -output-directory=output cv.tex

example: output output/template.pdf

output/template.pdf: template.tex
	pdflatex -output-directory=output template.tex

clean:
	rm -rf output
