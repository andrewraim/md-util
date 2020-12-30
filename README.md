# Introduction
Pandoc is great for taking Markdown and rendering things like Latex documents,
web pages, and slides. However, it can be somewhat involved to get the outputs
to your liking. In my experience, tools like Rstudio provide a more friendly
front-end to the functionality of Pandoc.

This project contains some utilities to directly use Pandoc from a terminal and
produce output close to what I personally want. This might be helpful if you
want to use a minimal environment consisting of a shell, a text editor like
Vim or Emacs, and a PDF or HTML viewer. Feel free to take it customize for your
own use.

# Installation

First clone the project from Github as usual. E.g.
```bash
$ git clone https://github.com/andrewraim/md-util
```
Suppose the project is cloned to `/path/to/md-util`. Add the bin subdirectory
to your path (assuming you are using Bash):
```bash
$ export MD_UTIL=/path/to/md-util
$ export PATH=$PATH:$MD_UTIL/bin
```
Add these two export commands to your bash configuration file to make the
changes persist in new terminal sessions.

This should make some new commands accessible:
```bash
$ md2beamer slides.md
$ md2html doc.md
$ md2pdf doc.md
```

Run the commands with `-h` for further information.

