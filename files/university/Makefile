all: growth time-series economic-calculus

check-growth:
	../../scripts/update growth

check-time-series:
	../../scripts/update time-series

check-economic-calculus:
	../../scripts/update economic-calculus

growth: check-growth
	../../scripts/build growth

time-series: check-time-series
	../../scripts/build time-series

economic-calculus: check-economic-calculus
	../../scripts/build economic-calculus

cleanall:
	rm -rf growth time-series economic-calculus
	rm *-sha
