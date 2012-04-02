TEXSOURCE = notes.tex
BIBSOURCE = biblio.bib
BIBAUX = notes.aux
GARBAGE = *.bbl *.log *.blg
PAPERS = papers/
DATE = `date`
notes: 
	pdflatex $(TEXSOURCE)
	bibtex $(BIBAUX)
	pdflatex $(TEXSOURCE)
	rm $(GARBAGE) $(BIBAUX)

commit:
	git add $(TEXSOURCE) 
	git add $(BIBSOURCE)
	git add $(PAPERS)
	git commit -m "$(DATE) - make commit"
	git push
