<<#header>>
# .latexmkrc : <<&title>>
# ------------------------------------------------------------------------------
<<#description>>
# <<&line>>
<</description>>
<</header>>
#
# <<&see>>
# * https://mg.readthedocs.io/latexmk.html
# * http://personal.psu.edu/jcc8//software/latexmk/latexmk-430a.txt

$pdf_mode = 1;
$bibtex_use = 2;
$pdflatex = "pdflatex -synctex=1 -interaction=nonstopmode";
$clean_ext = "loa lol synctex.gz";

@default_files = ("master.tex");
