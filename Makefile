PREFIX = /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install newfetch.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p newfetch $(DESTDIR)$(PREFIX)/bin/newfetch
	@cp -p newfetch.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/newfetch

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/newfetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/newfetch.1*
