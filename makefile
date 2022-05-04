.PHONY: all clean

mainfiles = scotus.pdf

all: $(mainfiles)

%.pdf: %.tex
	xelatex $<

clean:
	rm -f $(mainfiles) *.log *.aux
