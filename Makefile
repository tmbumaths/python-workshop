start:
	git pull
	jupyter lab

publish:
	mkdocs gh-deploy --clean --verbose

change:
	git commit -am "change made."
	git push