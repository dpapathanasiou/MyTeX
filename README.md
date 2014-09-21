# MyTeX

Are traditional paper letters dead? I do still find the need to write them from time to time, so here is my template and Makefile for producing personal letters in [LaTeX](http://www.latex-project.org/), as well as other types of documents, too.

## Installation

1. First, we need LaTeX itself.

   On my [debian](http://www.debian.org/) computer, this is all I needed (check [here](http://latex-project.org/ftp.html) for other operating systems):

   ```sh
sudo apt-get install texlive-full latex2rtf
```

2. Then, just clone this repo:

   ```sh
git clone https://github.com/dpapathanasiou/MyTeX.git
```

## Usage

Edit the <tt>.tex</tt> files in this repo to your liking (there is plenty of documentation on how to use LaTeX [here](http://latex-project.org/guides/) and [here](http://latex-project.org/guides/)), and use the [Makefile](Makefile).

This command compiles all the <tt>.tex</tt> files to [pdf](http://en.wikipedia.org/wiki/Portable_Document_Format) format:

```sh
make all
```

To start over, just wipe the compiled file with this:

```sh
make clean
```

## Document templates

* [Personal Letter](personal-letter.tex)

   The margins on this particulate template have been customized to fit my personal stationery, which looks like this:

   <a href="http://i.imgur.com/zCs3ffN.jpg" target="_blank"><img src="http://i.imgur.com/SsvPKoH.jpg" border="0" /></a> 

   So the [example pdf output](personal-letter.pdf) may not make complete sense on its own.

* [Curriculum Vitae/Resume](cv.tex)

   This template is based on the one created by [Jason Blevins](http://jblevins.org/projects/cv-template/), with modifications to import sections from [tex-inputs](tex-inputs) as modular tex files, using [\input](http://www.personal.ceu.hu/tex/input.htm#input).
