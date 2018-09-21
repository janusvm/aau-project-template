# LaTeX template

In these folders are LaTeX templates in Danish and English, respectively.

The file structure used in these templates is as follows:

```
.
├── fig
│   ├── alg
│   ├── img
│   ├── tab
│   └── tikz
├── incl
│   ├── app
│   ├── bib
│   ├── main
│   └── misc
├── py
├── Makefile
├── master.pdf
├── master.tex
└── preamble.tex

```

In the root directory we find `master.tex`, the top level file for the LaTeX project, along with `preamble.tex`, the document preamble.
The master and preamble are split in such a way that (bar additions of new custom commands), the preamble could be reused as-is for several projects, and edits would primarily happen in the master file.
The Makefile contains instructions for the program GNU Make on how to render the documents.

The `fig` (figures) directory contains input files for figures and other floats:

- `alg` (algorithms) contains `.tex` files with pseudocode listings
- `img` (images) contains image files
- `tab` (tables) contains files with tables
- `tikz` (tikzpictures) contains files with TikZ code

The `incl` (include) directory contains the files mainly comprising the body text of the project, split into the following types:

- `app` (appendix) contains appendices, one file per `\chapter`
- `bib` (bibliography) contains BibTeX files
- `main` is where the main body text files go, one file per `\chapter`
- `misc` (miscellaneous) is for formalities like the abstract, front page, title page, preface, etc.

The `py` folder contains Python source code in this example.
