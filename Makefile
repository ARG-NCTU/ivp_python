## Makefile for Lab 06 (Ten Short C++ Labs)                                                                
 # wget http://oceanai.mit.edu/cpplabs/lab06/Makefile                                                      

all: 
	cd cpp; make
	cd cpp/tests; make
	cd python; make

clean:
	cd cpp/build; make clean
	cd cpp/tests/build; make clean
	cd python/build; make clean
	rm -rf cpp/build
	rm -rf cpp/tests/build
	rm -rf python/build
