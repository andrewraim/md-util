DEST := $(HOME)/.local
BIN := $(DEST)/bin
CONFIG := $(HOME)/.config

SCRIPTS := src/mdrender
CONFIGS := src/mdrender.conf

.PHONY: install uninstall

install:
	mkdir -p $(BIN)
	mkdir -p $(CONFIG)
	cp $(SCRIPTS) $(BIN)
	cp $(CONFIGS) $(CONFIG)

