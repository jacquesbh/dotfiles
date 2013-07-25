dir=${shell pwd}

install: cleanAll vimrc screenrc gvimrc bashlogin dedicated

cleanAll: vimrcClean screenrcClean gvimrcClean bashloginClean dedicated

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
	rm -r ~/.bash_login

dedicated:
	ln -s ${dir}/.dedicated.bash ~/

dedicatedClean:
	rm -r ~/.dedicated.bash
