dir=${shell pwd}

install: cleanAll vimrc screenrc

cleanAll: vimrcClean screenrcClean

vimrc:
	ln -s ${dir}/.vimrc ~/

vimrcClean:
	rm -f ~/.vimrc

screenrc:
	ln -s ${dir}/.screenrc ~/

screenrcClean:
	rm -f ~/.screenrc

