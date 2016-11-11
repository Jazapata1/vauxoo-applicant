"""
Module with arithmetic operations
"""


class CalculatorClass(object):
    """
    Class with arithmetic operations
    """

    def sum(self, num_list):
        """
        Method that receives a list of numbers and adds them
        """
        total = 0
        for number in num_list:
            total += number
        return total
