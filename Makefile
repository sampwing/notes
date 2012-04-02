BIBAUX = notes.aux
BIBSOURCE = biblio.bib
DATE = ` date `
GARBAGE = *.bbl *.log *.blg
OUTPUT = notes.pdf
PAPERS = papers/
TEXSOURCE = notes.tex

notes: 
	pdflatex $(TEXSOURCE)
	bibtex $(BIBAUX)
	pdflatex $(TEXSOURCE)
	pdflatex $(TEXSOURCE)
	rm $(GARBAGE) $(BIBAUX)

commit:
	git add $(OUTPUT)
	git add $(TEXSOURCE) 
	git add $(BIBSOURCE)
	git add $(PAPERS)
	git commit -m "$(DATE) - make commit"
	git push
