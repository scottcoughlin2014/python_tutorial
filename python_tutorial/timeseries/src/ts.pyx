# distutils: language = c++

from TimeSeries cimport TimeSeries
from cython.operator cimport dereference
import numpy as np
cimport numpy as np

from matplotlib import pyplot
import matplotlib.patches as patches

cdef class PyTimeSeries:
    cdef TimeSeries c_series

    def __cinit__(self, double[:] series, **kwargs):
        cdef double[:] xindex
        cdef double[:] dydx
        xindex = kwargs.pop('xindex', np.arange(series.shape[0]).astype(float))
        take_directive = kwargs.pop("take_directive", False)
        if take_directive:
            dydx = np.diff(series)/ np.diff(xindex)
        else:
            dydx = np.zeros(series.shape[0] - 1).astype(float)

        self.c_series = TimeSeries(&series[0], series.shape[0], &xindex[0], &dydx[0])

    def get_dt(self):
        return self.c_series.getDT()

    def append(self, double value):
        cdef double[:] new_series
        series = self.series
        series.append(value)
        new_series = np.asarray(series)
        dereference(self.c_series.series)
        self.c_series.series = &new_series[0]
        self.size = new_series.size

    def plot(self, **kwargs):
        """plot your seriesangle

            Arguments:
               **fig_kwargs to pass to pyplot.subplots
               **patches_kwargs to pass to patches.TimeSeries

            Returns:
                A figure handle
        """
        fig, ax = pyplot.subplots(**kwargs)
        ax.plot(self.series)
        ax.set_xlim(self.xindex[0], self.xindex[-1])

        # Create a TimeSeries patch
        return fig

    # Attribute access
    @property
    def x0(self):
        return self.c_series.x0

    @x0.setter
    def x0(self, x0):
        self.c_series.x0 = x0

    # Attribute access
    @property
    def size(self):
        return self.c_series.size

    @size.setter
    def size(self, size):
        self.c_series.size = size

    def __getitem__(self, int i):
        return self.c_series.series[i]

    @property
    def series(self):
        return [self.c_series.series[i] for i in range(self.c_series.size)]

    @property
    def xindex(self):
        return [self.c_series.xindex[i] for i in range(self.c_series.size)]

    @property
    def dydx(self):
        return [self.c_series.dydx[i] for i in range(self.c_series.size - 1)]
