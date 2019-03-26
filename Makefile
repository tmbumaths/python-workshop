start:
	git pull
	jupyter lab

publish:
	git commit -am "change made."
	git push
	mkdocs gh-deploy

change:
	git push