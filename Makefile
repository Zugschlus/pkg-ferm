#
# Makefile for ferm
#

PREFIX		= /usr
INSTDIR		= $(PREFIX)/sbin
MANDIR		= $(PREFIX)/man/man1
DOCDIR		= $(PREFIX)/doc/packages/ferm
SHELL		= /bin/sh

all:	install

.phony:

install: .phony
	@echo "Creating directories..."
	@mkdir -p $(DOCDIR)/examples
	@mkdir -p $(MANDIR)
	@mkdir -p $(INSTDIR)
	@echo "Installing documentation in $(DOCDIR)..."
	@install -m 644 -o 0 -g 0 CHANGES $(DOCDIR)
	@install -m 644 -o 0 -g 0 COPYING $(DOCDIR)
	@install -m 644 -o 0 -g 0 AUTHORS $(DOCDIR)
	@install -m 644 -o 0 -g 0 README $(DOCDIR)
	@install -m 644 -o 0 -g 0 ferm.txt $(DOCDIR)
	@install -m 644 -o 0 -g 0 ferm.html $(DOCDIR)
	@install -m 644 -o 0 -g 0 examples/* $(DOCDIR)/examples
	@echo "Installing unix man page in $(MANDIR)..."
	@install -m 644 -o 0 -g 0 ferm.1 $(MANDIR)
	@echo "Installing ferm in $(INSTDIR)..."
	@install -m 755 -o 0 -g 0 ferm $(INSTDIR)/ferm
	@echo "Done."

uninstall:
	@echo "Uninstalling..."
	@rm -rf $(DOCDIR)
	@rm -f $(MANDIR)/ferm.1
	@rm -f $(INSTDIR)/ferm
	@echo "Done."


