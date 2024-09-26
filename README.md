# UOA Physics HEP thesis template
*Adapted by Shanette De La Motte from Ryan Bignell template*

Compile using `run_main.sh`, which compiles in LuaLatex for TikZ Feynman, as well as bibtex. There's also a makefile if you want to use that.

Thesis template based on the hepthesis class on CTAN, with University of Adelaide logo, with School of Physics Chemistry and Earth Sciences specified, and School of Science Engineering and Technology specified

https://ctan.org/pkg/hepthesis?lang=en

Basic structure:
main file has a bunch of files input into it.
preamble contains the packages you are using and custom defined commands
frontmatter does titlepage, abstract, etc
chapters are located in folders and \input into main
appendices are in separate files and also \input
backmatter handles the bibliography
