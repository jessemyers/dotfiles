DOTFILES:=\
  .emacs \
  .flake8 \
  .gitconfig \

all: $(patsubst %,~/%,$(DOTFILES))

~/%: %
	ln -s $(shell pwd)/$^ $@

# omits: user.email to allow for per-machine emails
~/.gitconfig:
	git config --global user.name "Jesse Myers"
	git config --global core.editor "emacs -nw"
	git config --global core.excludesfile "~/.gitignore"
	git config --global core.whitespace "trailing-space,space-before-tab"
	git config --global push.default "simple"
	git config --global push.followtags "true"
	git config --global pull.rebase "true"
	git config --global alias.co "checkout"
	git config --global alias.ci "commit"
	git config --global alias.st "status"
	git config --global alias.br "branch"
	git config --global alias.hist "log --pretty-format:'%h %ad | %s%d [%an]' --graph --date=short"
	git config --global alias.type "cat-file -t"
	git config --global alias.dump "cat-file -p"
	git config --global rerere.enabled "true"
	git config --global credential.helper "osxkeychain"
	git config --global color.ui "always"

.PHONY: ~/.gitconfig
