dir=${shell pwd}

install: cleanAll vimrc screenrc gvimrc

cleanAll: vimrcClean screenrcClean gvimrcClean

gvimrc:
	ln -s ${dir}/.gvimrc ~/

gvimrcClean:
	rm -f ~/.gvimrc

vimrc:
	ln -s ${dir}/.vimrc ~/

vimrcClean:
	rm -f ~/.vimrc

screenrc:
	ln -s ${dir}/.screenrc ~/

screenrcClean:
	rm -f ~/.screenrc

