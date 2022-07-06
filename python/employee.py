

class Employee:
    def __init__(self, id, name):
        self.__id = id
        self.name = name

    def display(self):
        return self.__id




e = Employee('1', 'shyam')

print(e.name)
print(e.display())
