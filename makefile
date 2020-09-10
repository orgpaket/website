all: deploy

updatejs:
	git submodule update --init
	$(MAKE) -C themes/minimo

build:
	hugo -d ../html
	echo $(shell date) > static/.last_updated

commit: build
	git submodule update --init
	git add .
	git commit -m "+ update $(shell date)"

private: commit
	git push && git push github

deploy: private
	make -C ../html
