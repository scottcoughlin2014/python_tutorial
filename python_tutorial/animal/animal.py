# -*- coding: utf-8 -*-
# Copyright (C) Scott Coughlin (2020)
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

"""`evolve`
"""

"""
Place package import here
"""

import numpy

__author__ = 'Scott Coughlin <scottcoughlin2014@u.northwestern.edu>'
__credits__ = 'Scott Coughlin <scottcoughlin2014@u.northwestern.edu>'
__all__ = ['Animal']



class Animal:
    """This class contains methods and properties asscoaited with all animals

    If the class has public attributes, they may be documented here
    in an ``Attributes`` section and follow the same formatting as a
    function's ``Args`` section. Alternatively, attributes may be documented
    inline with the attribute's declaration (see __init__ method below).

    Attributes:
        attr1 (str): Description of `attr1`.
        attr2 (:obj:`int`, optional): Description of `attr2`.

    """
    def __init__(self, vertebrate, warm_blooded):
        """Example of docstring on the __init__ method.

        The __init__ method may be documented in either the class level
        docstring, or as a docstring on the __init__ method itself.

        Either form is acceptable, but the two should not be mixed. Choose one
        convention to document the __init__ method and be consistent with it.

        Note:
            Do not include the `self` parameter in the ``Args`` section.

        Args:
            vertebrate (bool): Is this a invertebrate or bertebrate animal.
            warm_blooded (bool): Is this animal warm blooded or not 

        """
        self.vertebrate = vertebrate
        self.warm_blooded = warm_blooded

    def __str__(self):
        return "This animal is {0}".format(self._vertebrate_str)

    def example_class_instance_method(self, param1, param2):
        """Class instance methods are similar to regular functions.

        A class method is a method that is bound to a class *object*.
        It does require creation of a class instance.

        Note:
            Do not include the `self` parameter in the ``Args`` section.

        Args:
            param1: The first parameter.
            param2: The second parameter.

        Returns:
            True if successful, False otherwise.

        """
        return True

    @classmethod
    def example_class_method(cls, param1, param2):
        """Class instance methods are similar to regular functions.

        A class method is a method that is bound to a class rather than
        its object. It doesn't require creation of a class instance.

        Note:
            Do not include the `self` parameter in the ``Args`` section.

        Args:
            param1: The first parameter.
            param2: The second parameter.

        Returns:
            True if successful, False otherwise.

        """
        return True

    @staticmethod
    def example_static_method(cparam1, param2):
        """static methods are similar to regular functions.

        A static method is a method that is bound to a class rather than
        its object. It doesn't require creation of a class instance.

        The difference between a static method and a class method is:

            Static method knows nothing about the class and just deals with the parameters.
            Class method works with the class since its parameter is always the class itself.


        Note:
            Do not include the `self` parameter in the ``Args`` section.

        Args:
            param1: The first parameter.
            param2: The second parameter.

        Returns:
            True if successful, False otherwise.

        """
        return True
