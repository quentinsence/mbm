PREFIX=/usr/local

install:
	cp -f bin/mbm $(PREFIX)/bin/mbm
	cp completion/mbm.bash-completion /usr/share/bash-completion/completions/mbm
uninstall:
	rm -f $(PREFIX)/bin/mbm
	rm -f /usr/share/bash-completion/completions/mbm
