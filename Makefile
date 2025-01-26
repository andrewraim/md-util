DEST := $(HOME)/.local
BIN := $(DEST)/bin
SHARE := $(DEST)/share

.PHONY: install uninstall

SCRIPTS := bin/md2beamer bin/md2html bin/md2pdf

install:
	mkdir -p $(BIN)
	mkdir -p $(SHARE)
	cp $(SCRIPTS) $(BIN)
	cp -r pandoc $(SHARE)
	# printf "$(DEST)/%s\n" $(FILES) | xargs chmod u+x

uninstall:
	printf "%s\n" $(SCRIPTS) | xargs -I'@' rm -f $(BIN)/@
	rm -rf $(SHARE)/pandoc

