PREFIX ?= /usr/local
PREFIX := $(shell realpath "$(PREFIX)")

.SILENT:

nothing:

.PHONY: install
install:
	install -Dm755 nxm-handler "$(PREFIX)/bin/nxm-handler"
	cat nxm-handler.desktop | sed "s@%PREFIX%@$(PREFIX)@" > nxm-handler.desktop.tmp
	install -Dm644 nxm-handler.desktop.tmp "$(PREFIX)/share/applications/nxm-handler.desktop"
	rm nxm-handler.desktop.tmp
	update-desktop-database

.PHONY: uninstall
uninstall:
	rm -f "$(PREFIX)/bin/nxm-handler"
	rm -f "$(PREFIX)/share/applications/nxm-handler.desktop"
	rmdir --ignore-fail-on-non-empty -p "$(PREFIX)/bin"
	rmdir --ignore-fail-on-non-empty -p "$(PREFIX)/share/applications"
	update-desktop-database
