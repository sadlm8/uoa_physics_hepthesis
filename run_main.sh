#!/bin/bash
lualatex main.tex
bibtex main.aux
lualatex main.tex
lualatex main.tex
