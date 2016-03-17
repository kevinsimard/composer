install:
	@read -p 'Enter module name: ' name; \
	sed -i '' "s/<project_name>/$$name/g" composer.json

	@read -p 'Enter module description: ' desc; \
	sed -i '' "s/<project_desc>/$$desc/g" composer.json

	@read -p 'Enter module namespace: ' namespace; \
	sed -i '' "s/<project_namespace>/$$namespace/g" composer.json

	@rm -f Makefile 2> /dev/null

.DEFAULT_GOAL := install
.PHONY: install
