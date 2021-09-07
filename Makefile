full:
	TEXINPUTS=LatexPackages//: latexmk -pdf -dvi- full.tex

master:
	TEXINPUTS=LatexPackages//: latexmk -pdf -dvi master.tex

