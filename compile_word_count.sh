rm -rf .output && mkdir -p .output
cp -r src .output/src
cp -r ref .output
xelatex -output-directory=.output main_word_count.tex
(cd .output && bibtex main_word_count.aux)
xelatex -output-directory=.output main_word_count.tex
xelatex -output-directory=.output main_word_count.tex
