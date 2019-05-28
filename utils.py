'''
Utils Class
'''
class Utils:
    '''
    Method that subtract 2 tuples
    '''
    @staticmethod
    def subtract3DTuples(tuple1, tuple2):
        return tuple(tuple2[x] - tuple1[x] for x in range(3))