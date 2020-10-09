.PHONY: core.cpp
core.cpp:
	cython -3 --cplus core.pyx

.PHONY: copy
copy:
	cp core.cpp blastext/src/blastext/blastext.cpp
