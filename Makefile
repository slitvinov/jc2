M=main
# arguments
a=-interaction=nonstopmode
# tex
t=sty/def.tex  sty/notheme.tex t/title.tex
i=

$M.pdf: $M.tex $t $i
	pdflatex $a $< && \
	bibtex   $M    && \
	pdflatex $a $< && \
	pdflatex $a $<

png: $M.pdf
	tool/pdfpng $M.pdf png

view: $M.pdf
	llpp $M.pdf

.PHONY: clean png view
clean:
	@echo clean
	@rm -f $M.aux $M.log $M.nav $M.out $M.pdf $M.snm $M.toc
