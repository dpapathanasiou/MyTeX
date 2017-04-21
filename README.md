# MyTeX

Are traditional paper letters dead? I do still find the need to write them from time to time, so here is my template and Makefile for producing personal letters in [LaTeX](http://www.latex-project.org/), as well as other types of documents, too.

## Installation

1. First, we need LaTeX itself.

  - [Mac OSX](https://www.apple.com/macosx) via the [MacTeX Project](https://www.tug.org/mactex/)
  - [Debian](http://www.debian.org/)/[Ubuntu](https://www.ubuntu.com/) Linux via apt:
  ```sh
sudo apt-get install texlive-full latex2rtf
```
  - [Downloads for other operating systems](http://latex-project.org/ftp.html)

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

LaTeX creates several log and auxiliary files which are usually not needed once the pdf is created. These can be cleared with this command:

```sh
make tidy
```

To start over, just wipe the compiled file with this:

```sh
make clean
```

Any tex file starting with underscore ("<tt>_</tt>") is ignored by git, and can be used for maintaining personal documents not subject to source control.

## Document templates

* [Personal Letter](personal-letter.tex)

   The margins on this particulate template have been customized to fit my personal stationery, which looks like this:

   <a href="http://i.imgur.com/zCs3ffN.jpg" target="_blank"><img src="http://i.imgur.com/SsvPKoH.jpg" border="0" /></a>

   So the [example pdf output](personal-letter.pdf) may not make complete sense on its own.

* [Curriculum Vitae/Resume](cv.tex)

   This template is based on the one created by [Jason Blevins](http://jblevins.org/projects/cv-template/), with modifications to import sections from [tex-inputs](tex-inputs) as modular tex files, using [\input](http://www.personal.ceu.hu/tex/input.htm#input).

### Fonts

Both templates [allow the option to use local system fonts](http://stackoverflow.com/a/1840608) via the <tt>\setmainfont</tt> and <tt>\setmonofont</tt> directives in the document header.

On Linux, use <tt>/usr/bin/fc-list</tt> to get list of available fonts.

Keep any spaces in the name as-is.

For example, to use "Liberation Sans Narrow" as the main font, specify it like this:

```tex
\setmainfont[Scale=1.0]{Liberation Sans Narrow}
```

On Mac, use this terminal command to find the eligible fonts:

```sh
cat /Library/Fonts/fonts.list | grep "\.[(dfont|otf|ttc|ttf)]"
```

Strip out the path and file extension of the desired font before using it in the directive.

For example,

```sh
/Library/Fonts//Times New Roman.ttf
```

becomes this LaTeX header:

```tex
\setmainfont[Scale=1.0]{Times New Roman}
```
