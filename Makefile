
.PHONY: all clean publish

all:
	latexmk -pdf ropi

clean:
	latexmk -C

publish: all
	git submodule init && git submodule update
	cd gh-pages; git checkout gh-pages && cp ../ropi.pdf . && git add ropi.pdf && git commit -m "Update pdf"; git push
