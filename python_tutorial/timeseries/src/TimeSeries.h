#ifndef TIMESERIES_H
#define TIMESERIES_H

namespace timeseries {
    class TimeSeries {
        public:
            double x0;
            int size;
            double* series;
            double* xindex;
            double* dydx;
            TimeSeries();
            TimeSeries(double* series, int size, double* xindex, double* dydx);
            ~TimeSeries();
            double getDT();
    };
}

#endif
