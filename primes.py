"""
Module that calculates whether a number is prime or not
"""


class PrimeClass(object):
    """
    Class that calculates whether an integer is prime or not
    """

    def is_prime(self, num_int):
        """
        Method that receives an integer and says if it is prime
        """
        if num_int <= 1:
            return False
        else:
            for divisor in xrange(2, num_int):
                if num_int % divisor == 0:
                    return False
            return True
