start:
	git pull
	mkdocs serve & jupyter lab

lab:
	jupyter lab	

serve:
	cat mkdocs-local.yml navigation.yml > mkdocs.yml
	mkdocs serve

publish:
	wget --no-check-certificate --output-document=students.csv 'https://docs.google.com/spreadsheet/ccc?key=1tORZJKWl9Y__qnGe3AlDhY_bmLF9ms7hXasghGfrmSg&output=csv'
	{ echo -n 'var sourceData = '; csvtojson students.csv; } > docs/students.json
	cat mkdocs-global.yml navigation.yml > mkdocs-build.yml
	mkdocs gh-deploy --config-file ./mkdocs-build.yml --clean --verbose

change:
	git commit -am "change made."
	git push