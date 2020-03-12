.PHONY: install
install: zsh bin X11

.PHONY: zsh
zsh:
	cp .z* ~/         # install zsh dotfiles.
	cp .ctags ~/      # install ctags config.

.PHONY: bin
bin:
	mkdir ~/bin
	cp bin/* ~/bin/

.PHONY: X11
X11:
	cp .Xresources ~/
	cp cursor-theme ~/.icons/default/index.theme


.PHONY: hidpi
hidpi:
	cat .Xresources hidpi.txt > ~/.Xresources
