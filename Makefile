
SHELL = /bin/sh
SOURCES = $(shell echo *.tex)
TARGETS = $(shell echo *.pdf)

$(TARGETS): $(SOURCES)
	xelatex $^ 

all: $(TARGETS)

clean:
	rm -f $(TARGETS) *.log *.out *.aux
