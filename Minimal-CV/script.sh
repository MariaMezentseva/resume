#!/bin/bash

# Сборка LaTeX-документа 
pdflatex -interaction=nonstopmode Minimal-CV.tex && \
bibtex Minimal-CV && \
pdflatex -interaction=nonstopmode Minimal-CV.tex && \
pdflatex -interaction=nonstopmode Minimal-CV.tex

# Убираем все временные файлы LaTeX
rm -f *.aux *.log *.out *.toc *.bbl *.blg *.ilg *.idx *.ind *.lof *.lot *.nlo *.nls *.synctex.gz *.bcf *.xml