# makefile

# Copyright notice:
# Copyright (C) 2012 Aarón Bueno Villares

# Source package notice:
# This file is part of the FreeAlgView-project-doc package. You can get this
# package in zip and tar.gz formats in the next url:
#
#  - https://github.com/Peregring-lk/FreeAlgView-project-doc/downloads

# License notice:
# The FreeAlgView-project-doc package is made available under the terms of the
# Creative Commons Attribution-ShareAlike license, either version 3.0 of the
# license, or (at your option) any later version. You can read this license in
# the next url:
#
#  - http://creativecommons.org/licenses/by-sa/3.0/
#
# See also the LICENSE.txt file at the top-level directory of this package or
# in the next url:
#
#  - https://github.com/Peregring-lk/FreeAlgView-project-doc/blob
#    /master/LICENSE.txt

CHART-EN = project-charter-en.tex
PLAN-ST1-EN = project-plan-st1-en.tex

PDF = pdflatex -file-line-error

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