start:
	git pull
	jupyter lab

publish:
	git push
	mkdocs gh-deploy

change:
	git push