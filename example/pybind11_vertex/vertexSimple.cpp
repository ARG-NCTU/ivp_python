#include "../vertex_cpp/include/vertexSimple_bits/VertexSimple.h"

#include <pybind11/stl.h>
#include <pybind11/pybind11.h>

namespace py = pybind11;

PYBIND11_MODULE(vertexSimple, m) {
    // Optional docstring
    m.doc() = "This is a vertex library.";
    
    py::class_<VertexSimple>(m, "VertexSimple")
        .def(py::init<>())
        //.def(py::init<>(), "m_x"=0, "m_y"=0)
        .def("getSpec", &VertexSimple::getSpec)
        .def("setRandom", &VertexSimple::setRandom, py::arg("min"), py::arg("max"));
}
