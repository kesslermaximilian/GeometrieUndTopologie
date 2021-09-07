full:
	TEXINPUTS=LatexPackages//: latexmk -pdf -dvi- full.tex

master:
	TEXINPUTS=LatexPackages//: latexmk -pdf -dvi master.tex

init:
	@echo "[Make init] Initialising submodules..."
	@git submodule update --init --rebase
	@echo "[Make init] Setting up git hooks for package gitinfo2"
	@cp .travis/git-info-2.sh .git/hooks/post-merge
	@cp .travis/git-info-2.sh .git/hooks/post-checkout
	@cp .travis/git-info-2.sh .git/hooks/post-commit

config:
	@echo "[Make config] Setting git configs to prevent wrong pushes"
	@git config push.recurseSubmodules check
	@git config status.submodulesummary 1
