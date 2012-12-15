dir=${shell pwd}

install: clean
	ln -s ${dir}/.vimrc ~/

clean:
	rm -f ~/.vimrc
