PREL-EN = preliminary-goals-en.tex
CHART-EN = project-chart-en.tex

PDF = pdflatex
LATEX = latex

preliminary-en:
	$(PDF) $(PREL-EN) && $(PDF) $(PREL-EN)

chart-en:
	$(PDF) $(CHART-EN) && $(PDF) $(CHART-EN)

clean:
	$(RM) *.aux *.toc *.log \
	*.lof *.lot *.out *.bbl \
	*.blg *~ *.snm *.nav *\#
	$(RM) -r auto

clean-all:
	make clean
	$(RM) *.pdf *.dvi