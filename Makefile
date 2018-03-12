source_files = \
	preface.html \
	chronology.html \
	introduction.html \
	part1.html \
	part2.html \
	part3.html \
	part4.html \
	afterword.html

metadata = \
	"--metadata=title:The Hacker Crackdown" \
	"--metadata=subtitle:Law and Disorder on the Electronic Frontier" \
	"--metadata=author:Bruce Sterling" \
	"--metadata=date:November 1, 1992" \
	"--metadata=lang:en-US"


html:
	pandoc --output=The_Hacker_Crackdown.html --standalone \
		--css=styles/common.css --css=styles/html.css \
		$(source_files) $(metadata)

epub:
	pandoc --output=The_Hacker_Crackdown.epub --standalone \
		--css=styles/common.css --css=styles/epub.css \
		$(source_files) $(metadata)

markdown:
	pandoc --output=The_Hacker_Crackdown.md --standalone $(source_files) $(metadata)
