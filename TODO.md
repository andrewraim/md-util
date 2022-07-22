
- Print a useful help message
- Consider accepting additional arguments through to pandoc, or just
  keep these scripts very simple?
- Consider taking quiet / verbose flags
- Make a note somewhere:
  ```
  To change reference styles, add something like this                           
  #--csl $PANDOC_DIR/csl/american-statistical-association.csl \
  ```
- The installation process should ideally set the variable `PANDOC_DIR` in
  each of the scripts. For now, we assume they will be installed in `~/.local`
  in the `bin` and `share` subfolders.
