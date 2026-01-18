DEST := $(HOME)/.local
BIN := $(DEST)/bin
SHARE := $(DEST)/share

SCRIPTS := src/mdrender

.PHONY: install uninstall

install:
	mkdir -p $(BIN)
	mkdir -p $(SHARE)
	cp $(SCRIPTS) $(BIN)
	cp -r pandoc $(SHARE)

uninstall:
	rm -rf $(SHARE)/pandoc

