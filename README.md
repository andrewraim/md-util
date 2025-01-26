# Introduction

[Pandoc](https://pandoc.org) is document conversion program which can take
markdown and render things like Latex documents, web pages, and slides.
However, it can be somewhat involved to tailor the outputs to your liking. In
my experience, tools like Rstudio provide a more friendly front-end to the
functionality of Pandoc. However, one appealing aspect of Pandoc is its
minimalism; it can be paired with your preferred text editor and viewers, and
used entirely in a terminal.

This project contains some utilities to directly use Pandoc from a terminal and
produce output close to what I personally want. This might be helpful if you
want to use a minimal environment consisting of a shell, a text editor like
Vim or Emacs, and a PDF or HTML viewer. Feel free to take it as a starting
point and customize for your own use.

# Installation

First clone the project as usual.

```bash
$ git clone https://github.com/andrewraim/md-util
```

Running `make` installs the scripts to `~/.local`. To invoke the scripts as
commands, add `~/.local/bin` to your `$PATH` as follows. Include it in your
bash configuration file to make it persist in subsequent terminal sessions.

```bash
$ export PATH=$HOME/.local/bin:$PATH
```

This should make some new commands accessible.

```bash
$ md2beamer examples/slides.md
$ md2html examples/document.md
$ md2pdf examples/document.md
```

Run the commands with `-h` for further information.

# Previewing

Each script has a preview mode that places the PDF or HTML output into a
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

