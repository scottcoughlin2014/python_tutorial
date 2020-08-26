# distutils: sources = python_tutorial/rectangle/src/TimeSeries.cpp

cdef extern from "TimeSeries.h" namespace "timeseries":
    cdef cppclass TimeSeries:
        TimeSeries() except +
        TimeSeries(double [], int, double [], double []) except +
        double x0
        double* series
        double* xindex
        double* dydx
        int size
        double getDT()
