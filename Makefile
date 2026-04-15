
EPUB=visceral-fat-via-basal-insulin.epub visceral-fat-via-basal-insulin-v2.epub
PDF=visceral-fat-via-basal-insulin.pdf visceral-fat-via-basal-insulin-v2.pdf
HTML=visceral-fat-via-basal-insulin.html visceral-fat-via-basal-insulin-v2.html


all: $(EPUB) $(HTML) $(PDF)

%.pdf: %.md
	pandoc -f markdown -t pdf --pdf-engine=xelatex -V mainfont="Liberation Serif" $< -o $@

%.epub: %.md
	pandoc -f markdown -t epub $< -o $@

%.html: %.md
	pandoc -f markdown -t html $< -o $@

.PHONY: clean
clean:
	rm -v *.epub *.pdf
