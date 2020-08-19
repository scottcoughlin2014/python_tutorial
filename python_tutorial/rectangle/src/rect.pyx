# distutils: language = c++

from Rectangle cimport Rectangle
from matplotlib import pyplot
import matplotlib.patches as patches

cdef class PyRectangle:
    cdef Rectangle c_rect

    def __cinit__(self, int x0, int y0, int x1, int y1):
        self.c_rect = Rectangle(x0, y0, x1, y1)

    def get_area(self):
        return self.c_rect.getArea()

    def get_size(self):
        cdef int width, height
        self.c_rect.getSize(&width, &height)
        return width, height

    def move(self, dx, dy):
        self.c_rect.move(dx, dy)

    def half_rect(self):
        self.c_rect.halfRect()

    def half_rect_python(self):
        self.c_rect.x0 = self.c_rect.x0 /2
        self.c_rect.x1 = self.c_rect.x1 /2
        self.c_rect.y1 = self.c_rect.y1 /2
        self.c_rect.y0 = self.c_rect.y0 /2

    def plot(self, **kwargs):
        """plot your rectangle

            Arguments:
               **fig_kwargs to pass to pyplot.subplots
               **patches_kwargs to pass to patches.Rectangle

            Returns:
                A figure handle
        """
        fig, ax = pyplot.subplots(**kwargs)
        width, height = self.get_size()

        # Create a Rectangle patch
        rect = patches.Rectangle((self.x0, self.y0), width, height, **kwargs)

        # Add the patch to the Axes
        ax.add_patch(rect)
        ax.set_xlim([self.x0, self.x1])
        ax.set_ylim([self.y0, self.y1])

        return fig

    # Attribute access
    @property
    def x0(self):
        return self.c_rect.x0

    @x0.setter
    def x0(self, x0):
        self.c_rect.x0 = x0

    # Attribute access
    @property
    def x1(self):
        return self.c_rect.x1

    @x1.setter
    def x1(self, x1):
        self.c_rect.x1 = x1

    # Attribute access
    @property
    def y0(self):
        return self.c_rect.y0

    @y0.setter
    def y0(self, y0):
        self.c_rect.y0 = y0

    # Attribute access
    @property
    def y1(self):
        return self.c_rect.y1

    @y1.setter
    def y1(self, y1):
        self.c_rect.y1 = y1
