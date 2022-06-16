#include "../vertex_cpp/include/vertexSimple_bits/VertexSimple.h"

#include <pybind11/stl.h>
#include <pybind11/pybind11.h>

namespace py = pybind11;

PYBIND11_MODULE(vertexSimple, m) {

    m.doc() = "This is a vertex library with pybind11.";
    
    py::class_<VertexSimple>(m, "VertexSimple")
        .def(py::init<>())
        .def("getSpec", &VertexSimple::getSpec)
        .def("setRandom", &VertexSimple::setRandom, py::arg("min"), py::arg("max")
            ,"set x, y randomly by max and min");
}
