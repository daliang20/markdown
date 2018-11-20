PANDOC:=pandoc 
PANDOC_HTML:=--to=html
FLAGS:=--toc -s --self-contained --template=html.template
ifneq ("$(wildcard css/*.css)", "")
	CSS = --css
	CSS_FILES = $(wildcard css/*.css)
else 
	CSS =
	CSS_FILES=
endif

doc.html : doc.md  
	$(PANDOC) $(PANDOC_HTML) $(FLAGS) $(CSS) $(CSS_FILES) -o $@  $^

clean: 
	rm *.html
