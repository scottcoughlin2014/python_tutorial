# -*- coding: utf-8 -*-
# Copyright (C) Scott Coughlin (2019)
#
# This file is part of python_tutorial.
#
# python_tutorial is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# python_tutorial is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with python_tutorial.  If not, see <http://www.gnu.org/licenses/>.

"""Unit test for python_tutorial.YOURMODULE classes
"""

from python_tutorial.rectangle import PyRectangle

class TestPyRectangle(object):
    def test_get_area(self):
        assert 4 == PyRectangle(0,0,2,2).get_area()
