> **This README is out of date. Updates coming soon.**

# Introduction

This repo contains several command line utilities that use
[Pandoc](https://pandoc.org) to render markdown files into customized formats.
There are many excellent markdown editors that render and preview documents as
you edit them. The tools in this repo are especially intended for use in a
minimal environment with your preferred text editor and document viewer.

The document formats are currently somewhat specific to my preferences. Feel
free to take them as a starting point and customize for your own use.

- A PDF format for informal notes.
- A PDF format suitable for informal slides.
- An HTML format for informal notes. 

Pandoc is document conversion program which and render a variety of formats
like Latex documents, web pages, and slides from markdown files. Pandoc is very
flexible and usable entirely through the command line, but customizing the
output can be somewhat involved. 

# Installation

Clone the repo.

```bash
$ git clone https://github.com/andrewraim/md-util
```

Run `make` to install the scripts to `~/.local`. To invoke the scripts as
commands, add `~/.local/bin` to your `$PATH` as follows. Include it in your
bash configuration file to make it persist in subsequent terminal sessions.

```bash
$ export PATH=$HOME/.local/bin:$PATH
```

This should make the new command accessible.

```bash
$ mdrender -f beamer examples/slides.md
```

Run the command with `-h` for further information.

# Custom Slide Theme

Here is a note on how to use my nonstandard Beamer [theme][beamerthemeraim]
with `slides.md` in the examples. Download the theme `sty` file to the folder
with `slides.md`. Add the following to the YAML portion of the markdown source.

```markdown
theme: raim
```

The slides should now render with the custom theme.

[beamerthemeraim]: https://github.com/andrewraim/beamerthemeraim

# Previewing

The script has a preview mode that renders the PDF or HTML output to a
temporary location and opens a viewer with `xdg-open`.

The viewer can be configured using the `xdg-mime` command. For example, here we
set two particular applications PDF and HTML files. Additionals details are
given in this [post](https://unix.stackexchange.com/a/59088).

```bash
$ xdg-mime default qpdfview.desktop application/pdf
$ xdg-mime default lynx.desktop text/html
```

[qpdfview](https://launchpad.net/qpdfview) is a graphical PDF viewer that
supports viewing multiple documents in tabs. It is relatively light on
dependencies and does not require a specific desktop environment.

[lynx](https://lynx.invisible-island.net) is a terminal-based web browser. It
was more standard before modern graphical web browsers, but is still very
useful to navigate HTML documents that mostly consist of text.

The `qpdfview.desktop` entry refers to the following file which was installed
along with the `qpdfview` program.

```bash
$ ls /usr/share/applications/qpdfview.desktop
```

My installation of `lynx` did not include a `lynx.desktop` entry; therefore, I
created the following file. Placing it in this location makes it specific to
my user.

```bash
$ cat ~/.local/share/applications/lynx.desktop
[Desktop Entry]
Type=Application
Name=lynx
Comment=A text web browser
Exec=lynx
```

# Also See

- [Glow](https://github.com/charmbracelet/glow): A terminal-based markdown
  reader that does not require a graphical environment.
- [Quarto](https://quarto.org): A markdown-based documentation system that can
  render dynamic documents with embedded R, Python, and Julia code.


