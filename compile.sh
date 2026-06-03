rm -rf .output && mkdir -p .output
cp -r src .output/src
cp -r ref .output
xelatex -output-directory=.output main.tex
(cd .output && bibtex main.aux)
xelatex -output-directory=.output main.tex
xelatex -output-directory=.output main.tex
