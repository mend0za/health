DOC_BASE=visceral-fat-via-basal-insulin-v2
EPUB=$(DOC_BASE).epub self-massage.epub
PDF=$(DOC_BASE).pdf self-massage.pdf
HTML=$(DOC_BASE).html self-massage.html
FB2=$(DOC_BASE).fb2 self-massage.fb2


all: $(EPUB) $(PDF) $(FB2)

html: $(HTML)

%.pdf: %.md
	pandoc -f markdown_mmd -t pdf --pdf-engine=xelatex -V mainfont="Liberation Serif" $< -o $@

%.epub: %.md
	pandoc -f markdown_mmd -t epub $< -o $@

%.fb2: %.md
	pandoc -f markdown_mmd -t fb2 $< -o $@

%.html: %.md
	pandoc -f markdown_mmd -t html $< -o $@

.PHONY: clean
clean:
	rm -v $(EPUB) $(PDF) $(HTML)
