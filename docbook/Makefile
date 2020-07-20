all: PetitParserTutorial.pdf PetitParserTutorial.html EruditeManual.pdf EruditeManual.html CuisManual.pdf CuisManual.html
PetitParserTutorial.pdf:
	pandoc --from docbook --to pdf PetitParserTutorial.xml -o PetitParserTutorial.pdf
EruditeManual.pdf:
	pandoc --from docbook --to pdf EruditeManual.xml -o EruditeManual.pdf
PetitParserTutorial.html:
	pandoc --from docbook --to html PetitParserTutorial.xml -o PetitParserTutorial.html
EruditeManual.html:
	pandoc --from docbook --to html EruditeManual.xml -o EruditeManual.html
CuisManual.html:
	pandoc --from docbook --to html CuisManual.xml -o CuisManual.html
CuisManual.pdf:
	pandoc --from docbook --to pdf CuisManual.xml -o CuisManual.pdf
