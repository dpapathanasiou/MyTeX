
SHELL = /bin/sh
SOURCES = $(shell echo *.tex)
TARGETS = $(SOURCES:.tex=.pdf)

%.pdf: %.tex
	xelatex $^

all: $(TARGETS)

clean:
	rm -f $(TARGETS) *.log *.out *.aux
