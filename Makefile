start:
	git pull
	mkdocs serve & jupyter lab

lab:
	jupyter lab	

serve:
	cat mkdocs-local.yml navigation.yml > mkdocs.yml
	mkdocs serve

publish:
	cat mkdocs-global.yml navigation.yml > mkdocs-build.yml
	mkdocs gh-deploy --config-file ./mkdocs-build.yml --clean --verbose

change:
	git commit -am "change made."
	git push