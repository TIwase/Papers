tex2dvi=platex
dvi2pdf=dvipdfmx

all: main.pdf

%.dvi: %.tex
	$(tex2dvi) $<
	$(tex2dvi) $<

%.pdf: %.dvi
	$(dvi2pdf) $<

.PHONY: clean
clean:
	rm -rf *.dvi *.log *.aux

main.dvi: main.tex ies2018.cls
