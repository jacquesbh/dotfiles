dir=${shell pwd}

install: cleanAll vimrc screenrc gvimrc bashlogin

cleanAll: vimrcClean screenrcClean gvimrcClean bashloginClean

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

bashlogin:
	ln -s ${dir}/.bash_login ~/

bashloginClean:
	rm -f ~/.bash_login

