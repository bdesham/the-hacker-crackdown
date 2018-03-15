source_files = \
	source/preface.html \
	source/chronology.html \
	source/introduction.html \
	source/part1.html \
	source/part2.html \
	source/part3.html \
	source/part4.html \
	source/afterword.html

metadata = \
	"--metadata=title:The Hacker Crackdown" \
	"--metadata=subtitle:Law and Disorder on the Electronic Frontier" \
	"--metadata=author:Bruce Sterling" \
	"--metadata=date:November 1, 1992" \
	"--metadata=lang:en-US"


all: html epub markdown

html:
	pandoc --to=html5 --output=The_Hacker_Crackdown.html --self-contained \
		--css=styles/common.css --css=styles/html.css \
		$(source_files) $(metadata)

epub:
	pandoc --output=The_Hacker_Crackdown.epub --toc-depth=2 \
		--css=styles/common.css --css=styles/epub.css \
		$(source_files) $(metadata)

markdown:
	pandoc --output=The_Hacker_Crackdown.md --standalone $(source_files) $(metadata)
