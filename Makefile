DEST := $(HOME)/.local
BIN := $(DEST)/bin
SHARE := $(DEST)/share
CONFIG := $(HOME)/.config

SCRIPTS := src/mdrender
CONFIGS := src/mdrender.conf

.PHONY: install uninstall

install:
	mkdir -p $(BIN)
	mkdir -p $(SHARE)
	mkdir -p $(CONFIG)
	cp $(SCRIPTS) $(BIN)
	cp $(CONFIGS) $(CONFIG)
	cp -r pandoc $(SHARE)

uninstall:
	rm -rf $(SHARE)/pandoc

