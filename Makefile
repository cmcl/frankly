all: frankly.pdf

frankly.aux: frankly.tex
	pdflatex frankly

frankly.bbl: frankly.aux frankly.bib
	bibtex frankly

frankly.pdf: frankly.aux frankly.bbl
	pdflatex frankly
	pdflatex frankly

clean:
	rm -f frankly.pdf frankly.aux frankly.out frankly.log frankly.blg frankly.bbl
