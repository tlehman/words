all: decommonize

install: all
	cp words ~/bin/words && cp decommonize ~/bin/decommonize

uninstall: all
	rm ~/bin/words ~/bin/decommonize

decommonize:
	./generate_decommonize && chmod +x decommonize

