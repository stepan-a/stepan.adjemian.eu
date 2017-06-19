push: build
	rsync -avz output/ odysseus:/home/stepan/www/stepan.adjemian.eu

build: update
	nikola build

update:
	git submodule update --init --recursive
	make -C files/university
