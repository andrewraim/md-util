DEST := $(HOME)/.local
BIN := $(DEST)/bin
CONFIG := $(HOME)/.config

SCRIPTS := src/panc
CONFIGS := src/panc.conf

.PHONY: install uninstall

install:
	mkdir -p $(BIN)
	mkdir -p $(CONFIG)
	cp $(SCRIPTS) $(BIN)
	cp $(CONFIGS) $(CONFIG)

