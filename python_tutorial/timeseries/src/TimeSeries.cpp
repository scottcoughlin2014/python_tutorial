#include <iostream>
#include "TimeSeries.h"

namespace timeseries {

    // Default constructor
    TimeSeries::TimeSeries () {}

    // Overloaded constructor
    TimeSeries::TimeSeries (double* series, int size, double* xindex, double* dydx) {
        this->series = series;
        this->xindex = xindex;
        this->dydx = dydx;
        this->size = size;
        this->x0 = series[0];
    }

    // Destructor
    TimeSeries::~TimeSeries () {}

    double TimeSeries::getDT () {
        return (this->xindex[1] - this->xindex[0]);
    }
}
