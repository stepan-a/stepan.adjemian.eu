all: time-series economic-calculus growth

.PHONY: time-series economic-calculus growth clean

time-series:
	make -C time-series all

growth:
	make -C growth all

economic-calculus:
	make -C economic-calculus all

clean:
	make -C time-series clean-all
	make -C economic-calculus clean-all
	make -C growth clean-all
