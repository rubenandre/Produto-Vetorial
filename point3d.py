from utils import Utils
from vector import Vector

'''
Class responsible for point with 3 coordinates
'''
class Point3D:
    '''
    Init of Point3D class
    @param x coordinate x of point
    @param y coordinate y of point
    @param z coordinate z of point
    '''
    def __init__(self, x, y, z):
        self.point = (x, y, z)

    '''
    Method that create a vector with 2 points
    @param self actual object
    @param point another object of Point3D
    @returns a vector
    '''
    def createVector(self, oPoint):
        if(isinstance(oPoint, Point3D)):
            return Vector(Utils.subtract3DTuples(self.point, oPoint.point))
        raise TypeError("The argument have to be of type Point3D")
