## Makefile for Lab 06 (Ten Short C++ Labs)                                                                
 # wget http://oceanai.mit.edu/cpplabs/lab06/Makefile                                                      

all: 
	cd cpp/build; make; make install
	cd cpp/tests/build; make
	cd pybind11/build; make; make install

clean:
	rm -rf cpp/build
	rm -rf cpp/tests/build
	rm -rf pybind11/build
#   rm -rf cpp_ivp_src/build
