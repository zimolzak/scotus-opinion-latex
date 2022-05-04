.PHONY: all clean

mainfiles = scotus.pdf

all: $(mainfiles)

CenturySchoolbook.ttf:
	cp /Applications/Microsoft\ Word.app/Contents/Resources/DFonts/Century\ Schoolbook.ttf ./$@

scotus.pdf: scotus.tex CenturySchoolbook.ttf
	xelatex $<

clean:
	rm -f $(mainfiles) CenturySchoolbook.ttf *.log *.aux
