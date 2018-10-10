# LaTeX template

In these folders are LaTeX templates in Danish and English, respectively.
They are written in such a way that you should be able to quickly start writing the contents of your report, even if you don't know very much about LaTeX.

Many of the files include comments to clarify what the code does and/or how to use and adapt it, so make sure to look in the files, if it's your first time using the template.
The master document, `master.pdf`, includes a quick intro to some of the syntax as well as some useful links (until you delete that example files, that is).


## How to use the templates

1. Download either the English (en.zip) or Danish (da.zip) template from the [latest release](https://github.com/janusvm/aau-project-template/releases/latest)
2. Unpack the archive in your project folder
3. Delete the example files:
   - `fig/alg/bubblesort.tex`
   - `fig/img/me.jpg`
   - `fig/img/me.tex`
   - `fig/tab/my-table.tex`
   - `fig/tikz/my-graph.tex`
   - `incl/app/code.tex`
   - `incl/app/pseudo.tex`
   - `incl/main/example1.tex`
   - `incl/main/example2.tex`
   - `py/bubblesort.py`
4. Replace the dummy info in the following files:
   - `incl/bib/bibliography.bib`
   - `incl/misc/abstract.tex`
   - `incl/misc/titlepage.tex`
   - `master.tex`
5. Start writing!
   - Put each chapter in its own file in `incl/main` and `\include` it in `master.tex`
   - Put packages and custom commands in `preamble.tex`
   - Customise `incl/misc/frontpage.tex` to make your project front page more interesting


## Structure

The project structure in the templates is _my subjective suggestion_ for how to organise a LaTeX project, but feel free to adapt it to your own liking.
It's organised as follows:

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
├── master.pdf
├── master.tex
└── preamble.tex
```

In the root directory we find `master.tex`, the top level file for the LaTeX project, along with `preamble.tex`, the document preamble.
The master and preamble are split in such a way that (bar additions of new custom commands), the preamble could be reused as-is for several projects, and edits would primarily happen in the master file.

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

Oftentimes a project will involve other things than just LaTeX code and images, and in those cases, I tend to make seperate directories for each kind of "other thing".
For example, in this template, I have included some Python code, for which I have a folder called `py`.
If you work with data stored in e.g. CSV files, you might put them in a folder called `data`.

While you _can_ put everything in one single folder, getting used to putting different types of files into different subdirectories can be a great help to keep the project organised, especially as the number of files grow.
To reiterate: this structure reflects my subjective opinion, but feel free to adapt it to your liking.
