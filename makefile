CHART-EN = project-charter-en.tex

PDF = pdflatex
LATEX = latex

charter-en:
	$(PDF) $(CHART-EN) && $(PDF) $(CHART-EN)

clean:
	$(RM) *.aux *.toc *.log \
	*.lof *.lot *.out *.bbl \
	*.blg *~ *.snm *.nav *\#
	$(RM) -r auto

clean-all:
	make clean
	$(RM) *.pdf *.dvi