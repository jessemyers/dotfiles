DOTFILES:=\
  .emacs \
  .flake8 \

all: $(patsubst %,~/%,$(DOTFILES))

~/%: %
	ln -s $(shell pwd)/$^ $@
