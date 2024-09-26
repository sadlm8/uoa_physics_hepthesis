filename=main

#location of 'latex' executables
latex=latex
bibtex=bibtex

#pdf: ps
#	ps2pdf ${filename}.ps
#
##pdf-print: ps
##	ps2pdf -dColorConversionStrategy=/LeaveColorUnchanged -dPDFSETTINGS=/printer ${filename}.ps
#
##text: html
##	html2text -width 100 -style pretty ${filename}/${filename}.html | sed -n '/./,$$p' | head -n-2 >${filename}.txt
#
##html:
##	@#latex2html -split +0 -info "" -no_navigation ${filename}
##	htlatex ${filename}
#
#ps:	dvi
#	dvips -R0 -t a4 ${filename}.dvi
#
#dvi:
#	latex --shell-escape ${filename}
#	bibtex ${filename}||true
#	latex ${filename}
#	latex ${filename}
#

pdf:
	pdflatex --shell-escape ${filename}
	bibtex ${filename}||true
	pdflatex ${filename}
	pdflatex ${filename}


bib:
	bibtex ${filename}

read:
	evince ${filename}.pdf &

#aread:
#	acroread ${filename}.pdf

clean:
	rm -f ${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg}
