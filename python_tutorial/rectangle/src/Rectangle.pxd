# distutils: sources = python_tutorial/rectangle/src/Rectangle.cpp

cdef extern from "Rectangle.h" namespace "shapes":
    cdef cppclass Rectangle:
        Rectangle() except +
        Rectangle(int, int, int, int) except +
        int x0, y0, x1, y1
        int getArea()
        void halfRect()
        void getSize(int* width, int* height)
        void move(int, int)
