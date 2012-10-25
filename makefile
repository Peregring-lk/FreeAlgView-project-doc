CHART-EN = project-charter-en.tex
PLAN-ST1-EN = project-plan-st1-en.tex

PDF = pdflatex
LATEX = latex

charter-en:
	$(PDF) $(CHART-EN) && $(PDF) $(CHART-EN)

plan-st1-en:
	$(PDF) $(PLAN-ST1-EN) && $(PDF) $(PLAN-ST1-EN)

clean:
	$(RM) *.aux *.toc *.log \
	*.lof *.lot *.out *.bbl \
	*.blg *~ *.snm *.nav *\#
	$(RM) -r auto

clean-all:
	make clean
	$(RM) *.pdf *.dvi