push: build
	rsync -avz output/ odysseus.adjemian.eu:/home/www/stepan.adjemian.eu

build: update
	nikola build

update:
	git submodule update --init --recursive
	make -C files/university
