PREFIX=/usr/local

install:
	cp -f bin/mbm $(PREFIX)/bin/mbm

uninstall:
	rm -f $(PREFIX)/bin/mbm
