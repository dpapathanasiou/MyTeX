# MyTeX

Are traditional paper letters dead? I do still find the need to write them from time to time, so here is my template and Makefile for producing personal letters in [LaTeX](http://www.latex-project.org/), as well as other types of documen
ts.

## Installation

1. First, we need LaTeX itself.

   On my [debian](http://www.debian.org/) computer, this is all I needed (check [here](http://latex-project.org/ftp.html) for other operating systems):

   ```sh
sudo apt-get install texlive-full latex2rtf
```

2. Then, just clone this repo:

   ```sh
git clone 
```

## Usage

Edit the <tt>.tex</tt> files in this to your liking (there is plenty of documentation on how to use LaTeX [here](http://latex-project.org/guides/) and [here](http://latex-project.org/guides/)), and use the [Makefile](Makefile).

This command compiles all the <tt>.tex</tt> files to [pdf](http://en.wikipedia.org/wiki/Portable_Document_Format) format:

```sh
make all
```

To start over, just wipe the compiled file with this:

```sh
make clean
```

### [Personal Letter](personal-letter.tex)

The margins have been customized to fit my personal stationery, which looks like this (click to enlarge):

![http://i.imgur.com/SsvPKoH.jpg](http://i.imgur.com/zCs3ffN.jpg "My personal stationery")

