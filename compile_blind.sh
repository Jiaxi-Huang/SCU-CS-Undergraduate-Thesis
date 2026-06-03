rm -rf .output && mkdir -p .output
cp -r src .output/src
cp -r ref .output
xelatex -output-directory=.output main_blind.tex
(cd .output && bibtex main_blind.aux)
xelatex -output-directory=.output main_blind.tex
xelatex -output-directory=.output main_blind.tex
