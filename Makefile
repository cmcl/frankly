DEPS:=intro.tex examples.tex frank.tex core.tex feff.tex opersem.tex\
related.tex future.tex

all: frankly.pdf

frankly.pdf:frankly.tex $(DEPS)
	latexmk -pdf frankly.tex

clean:
	rm -f *.log *.aux *.toc *.out
	rm -f *.bbl *.blg *.fls *.xml
	rm -f frankly.pdf
