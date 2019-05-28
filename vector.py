'''
Class responsible for vector with 3 coordinates
'''
class Vector:
    def __init__(self, vector):
        if(isinstance(vector, tuple)):
            self.coordinates = vector
        else:
            raise TypeError("The argument have to be a tuple")