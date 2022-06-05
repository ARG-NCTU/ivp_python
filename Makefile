## Makefile for Lab 06 (Ten Short C++ Labs)                                                                
 # wget http://oceanai.mit.edu/cpplabs/lab06/Makefile                                                      

all: build-ivp build-example tests

build-ivp:
	cd ivp/src; make
	cd ivp/src_unit_tests; make 

build-example:
	cd example/cpp; make  
	cd example/cpp/tests; make
	cd example/pybind11; make

tests:
	cd ivp/src_unit_tests; ./alltest.sh
	cd example/cpp/tests/bin/; ./test_cpp
	cd example/tests; python3 test.py

clean:
	rm -rf ivp/src/build
	rm -rf ivp/src_unit_tests/build
	rm -rf example/cpp/build
	rm -rf example/cpp/tests/build
	rm -rf example/pybind11/build
