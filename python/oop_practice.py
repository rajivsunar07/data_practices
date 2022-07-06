class Vehicle:
    def __init__(self, id, name):
        self.__id = id # Encapsulation
        self.name = name

    def get_id(self):
        return self.__id

# Inheritence
class Car(Vehicle):
    def __init__(self, id, name) -> None:
        super().__init__(id, name)
    
    def drive(self):
        print('Driving')
    

class Honda(Car): 
    def __init__(self, id, name):
        super().__init__(id, name)

    # Polymorphism
    def drive(self):
        print('Honda is driving') 
    
    @staticmethod
    def change_tire():
        print('Changing tire')

Honda.change_tire()