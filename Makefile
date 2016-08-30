TARGET :=	brass-tacks.epub
MDFILES :=	$(shell src/*.md)

all: $(TARGET) 

$(TARGET): $(MDFILES) metadata.xml book.css
	pandoc -f markdown_github --epub-metadata metadata.xml 		\
		--epub-stylesheet book.css -S 				\
		-o $@ src/SUMMARY.md src/[0-9]*.md

clean:
	rm -f $(TARGET)

