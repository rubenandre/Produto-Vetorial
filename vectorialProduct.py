from point3d import Point3D
from vector import Vector

'''
Method that create 2 Vectors and applied laplace rule to them
'''
def laplace(point1, point2, point3):
    try:
        vetor1 = point1.createVector(point2)
        vetor2 = point1.createVector(point3)

        x = vetor1.coordinates[1] * vetor2.coordinates[2] - vetor1.coordinates[2] * vetor2.coordinates[1]
        y = vetor1.coordinates[2] * vetor2.coordinates[0] - vetor1.coordinates[0] * vetor2.coordinates[2]
        z = vetor1.coordinates[0] * vetor2.coordinates[1] - vetor1.coordinates[1] * vetor2.coordinates[0]

        d = -(x * point1.point[0] + y * point1.point[1] + z * point1.point[2])

        print("Normal Vector: n({}, {}, {})".format(x, y , z))
        print("Plan Equation: {}x + {}y + {}z + {} = 0".format(x, y, z, d))
    except TypeError:
        print("The argument have to be of type Point3D")

'''
Main 
'''
if __name__ == '__main__':
    p1 = Point3D(5, 4, 3)
    p2 = Point3D(6, -1, 2)
    p3 = Point3D(7, 2, -4)
    laplace(p1, p2, p3)