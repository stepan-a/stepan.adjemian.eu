push: build
	rsync -avz output/ odysseus:/home/stepan/www/stepan.adjemian.eu

build: update
	nikola build

update:
	make -C files/university
