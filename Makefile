full:
	TEXINPUTS=LatexPackages//: latexmk -pdf -dvi- full.tex

master:
	TEXINPUTS=LatexPackages//: latexmk -pdf -dvi master.tex

init:
	@echo "[Make init] Initialising submodules..."
	@git submodule update --init --rebase

config:
	@echo "[Make init] Setting git configs to prevent wrong pushes"
	@git config push.recurseSubmodules check
	@git config status.submodulesummary 1
