This folder contains individual tex files which compose a larger document (read [LaTeX Splitting the Input](http://www.personal.ceu.hu/tex/input.htm) for more about this technique), and also prevent confusion when using the [Makefile](../Makefile) to compile documents in the root folder.

Any tex files in the root folder using <tt>\include</tt>, <tt>\includeonly</tt>, or <tt>\input</tt> should preceed them with this folder name, e.g., <tt>\input{tex-inputs/cv-contact}</tt>, which refers to the [cv-contact.tex](cv-contact.tex) file imported by the [cv template](../cv.tex).

As in the root folder, any tex file starting with underscore ("<tt>_</tt>") is ignored by git, and can be used for maintaining personal documents not subject to source control. 