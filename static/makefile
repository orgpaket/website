all: deploy

commit:
	git add .
	git commit -m "+ update $(shell date)"

deploy: commit
	git push

