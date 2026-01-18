DEST := $(HOME)/.local
BIN := $(DEST)/bin
SHARE := $(DEST)/share

.PHONY: install uninstall

SCRIPTS := src/md2beamer src/md2html src/md2pdf

install:
	mkdir -p $(BIN)
	mkdir -p $(SHARE)
	cp $(SCRIPTS) $(BIN)
	cp -r pandoc $(SHARE)
	# printf "$(DEST)/%s\n" $(FILES) | xargs chmod u+x

uninstall:
	printf "%s\n" $(SCRIPTS) | xargs -I'@' rm -f $(BIN)/@
	rm -rf $(SHARE)/pandoc

