# python oop classes

'''
print("---------------------------!!!!!")

class myclass:
    x=5
    y=4
    z=23
p1=myclass()
p2=myclass()
p3=myclass()
print(p1.x)
print(p2.y)
print(p3.z)


print("---------------------------!!!!!")

class person:
    def __init__(self,name,age,city,number=3401250):
        self.name=name
        self.age=age
        self.city=city
        self.number=number
        
    def greet(self):
        print(f"Hello, my name is  {self.name } and I'm {self.age} years old")

p1=person("Tobias",28,"london",54789)
print(p1.name,p1.age,p1.city)

p2=person("Email",24,"Peris")
# print(p2.name,p2.age)
# print(p2.number)

p2.greet()

'''
'''
print("-----------------------------------!!!")

class product:
    def __init__(self,name,price):
        self.name=name
        self.price=price

    def show(self):
        print(self.name,"ka price", self.price,"hai")

p1=product("Laptop",50000)
p1.show()

class student:
    def __init__(self,name,marks):
        self.name=name
        self.marks=marks
        if marks>=40:
            print("Pass")
        else:
            print("fail")

s1=student("amina",34)
s1.__init__("amina",50)

class car:
    def __init__(self,brand,color):
        self.brand=brand
        self.color=color
    def show(self):
        print( "This car brand is" ,self.brand, "and color is" ,self.color,".")


c1=car("Audi","white")
c2=car("Defender","Black")

c1.show()
c2.show()
'''


# OPP --> Object Oriented Programming
# The __init__ method is used to assign values to object properties or to perform operations that are necessary when the object is being created 
# self parameter is a reference to the current instance of the class

'''

class Person():
    def __init__(self,name,age):
        self.name=name
        self.age=age

    def greet(self):
        print("Hello ,my name is",self.name)


p1=Person("John",36)

p1.greet()


class Dog:
    def __init__(self,name,age):
        self.name=name
        self.age=age


    def dark(self):
        print(self.name,"says Woof !")

d1=Dog("Buddy",3)
d1.dark()

class Car:
    def __init__(self,brand,model,year):
        self.brand=brand
        self.model=model
        self.year=year

    def display_info(self):
        print(self.year,self.brand,self.model)

car1=Car("Toyota","Corolla",2020)
car1.display_info()    
    

class Person:
    def __init__(self,name):
        self.name=name

    def greet(self):
        return "Hello ," + self.name
    
    def welcome(self):
        message=self.greet()
        print(message + " ! Welcome to our Website .")

p1=Person("Tobias")
p1.welcome()


class Car:
    def __init__(self,brand):
        self.brand=brand

    def show(self):
        print(self.brand)

c1=Car("Ford")

del c1.brand   # delete objects using the del keyword
c1.brand="Classic"  # modify properties

c1.show()


properties defined  inside __init__() belong to each object (instance properties)
properties defined outside methods belong to the class iteself (class properties)
and are shared by all objects .
'''
'''
class School:
    name="Govt.sr.sec.school" # Class property
    def __init__(self,address,name="High school"):  
        self.address=address  # Instance property 
        self.name=name

    def show(self):
        print("Welcome My School",self.name)


s1=School("Sikar","Arawali High School")
s1.show()
s2=School("Jaipur")
s2.show()
print(School.name)

class oop:
    lastname=""   # bina value diye value update karna 

    def __init__(self,name):
        self.name=name


o1=oop("Linus")

oop.lastname="Refsnes"
print(o1.lastname)
print(o1.name)

class Human:
    def __init__(self,name):
        self.name=name

h1=Human("Tobias")  # add new properties
h1.age=18
h1.city="Oslo"

print(h1.age,h1.name,h1.city)


class Student:
    def __init__(self,name,grade):
        self.name=name
        self.grade=grade

s1=Student("Anna","A")
print(s1.grade)  
s1.grade="B"    # chnage grade 
print(s1.grade)


# class method :- method are functions that belong to a class. They define the behaviour of objects created from the class

class Calculator:
    def add(self,a,b):
        return a+b

    def multiply(self,a,b):
        return a*b


calc=Calculator()
print(calc.add(5,6))
print(calc.multiply(4,8))


class one:
    def __init__(self,name,age):
        self.name=name
        self.age=age
    
    def get_info(self):
        return f"{self.name} is {self.age} years old"
    
p1=one("Tobias",28)
print(p1.get_info())

class person:
    def __init__(self,name,age):
        self.name=name
        self.age=age

    def celebrate_birthay(self):
        self.age+=1
        print(f"Happy birthday ! You are now {self.age}")


p1=person("Linus",25)

p1.celebrate_birthay()

# __str_ method is a special method that controls what is returned when the object is printed


class two:
    def __init__(self,name,age):
        self.name=name
        self.age=age

    def __str__(self):
        return f"{self.name} ({self.age})"
    
p1=two("Tobias",36)
print(p1)
'''

# init  is a constructor method in python that is automatically called when an object is created. it is used to initialize the object's attributes

# str is a special method used to define a userfriendly string representation of an object. it is automatically called when we print the object 
'''
class playlist:
    def __init__(self,name):
        self.name=name
        self.songs=[]

    def addsong(self,song):
        self.songs.append(song)
        print(f"Added : {song}")

    def remove_song(self,song):
        if song in self.songs:
            self.songs.remove(song)
            print(f"Removed : {song}")

    def show_songs(self):
        print(f"Playlist '{self.name}' :")
        for song in self.songs:
            print(f" -{song}")


playlist_name=input("Enter Playlist name :")
my_playlist=playlist(playlist_name)

while True:
    choice=int(input("Enter your choice"))

    match choice:
        case 1:
            song=input("Enter song name: ")
            my_playlist.addsong(song)

        case 2:
            song=input("Enter song name to remove :")
            my_playlist.remove_song(song)
            print("remove sitare ")
        
        case 3 :
            song=input("enter your playlist name ")
            my_playlist.show_songs()

        case 4 :
            print("Exiting .... Goodbye !")
            break

        case 5 :
            print("Invalid choice ! Try again .")'''

'''
class Rectangle:
    def __init__(self,width,height):
        self.width=width
        self.height=height

    def area(self):
        return self.width * self.height
        

r1=Rectangle(5,3)
print(r1.area())

# Python Inheritance

class Animal:
    def speak(self):
        print("Animal is speaking")

class Dog(Animal):
    def bark(self):
        print("Dog is barking")


d=Dog()
d.speak()
d.bark()

class Class:
    def __init__(self,fname,lname):
        self.firstname=fname
        self.lastname=lname

    def printname(self):
        print(self.firstname,self.lastname)


class Classs(Class):
    def __init__(self, fname, lname):
        Class.__init__(self,fname,lname)
    

x=Classs("Mike","Oslen")
x.printname()

class  PERSON :
    def __init__(self,name,surname):
        self.firstname=name
        self.lastname=surname

    def printname(self):
        print(self.firstname,self.lastname)


class STUDENT(PERSON):
    def __init__(self, name, surname):
        super().__init__(name, surname)

y=STUDENT("MIKE","Oslen")

y.printname()



# add properties
class one:
    def __init__(self,name,age):
        self.name=name
        self.age=age


    def printname(self):
        print(self.name, self.age)
        
class two(one):
    def __init__(self, name, age,year):
        super().__init__(name, age)
        self.graduatonyear=year

o=two("MIKE","OSlen",2012)
print(o.graduatonyear)




class ishika:
    def __init__(self,name,age):
        self.name=name
        self.age=age


    def printname(self):
        print(self.name,self.age)

    
class ishikaa(ishika):
    def __init__(self, name, age,year):
        super().__init__(name,age)
        self.gradutionyear=year

    def welcome(self):
        print("Welcome", self.name,self.age,"To the class of ",self.gradutionyear)


i=ishikaa("mike","Oslen",2012)
i.welcome()




class Animal :
    def __init__(self,name):
        self.name=name

    def speak(self):
        print(self.name)


class Dog(Animal):
    pass

d1=Dog("Rex")

d1.speak()


# Polymorphism

class Car:
    def __init__(self,brand,model):
        self.brand=brand
        self.model=model

    def move(self):
        print("Drive !")


class Boat:
    def __init__(self,brand,model):
        self.brand=brand
        self.model=model

    def move(self):
        print("Sail !")

class Plane:
    def __init__(self,brand,model):
        self.brand=brand
        self.model=model

    def move(self):
        print("Fly !")



car1=Car("Ford","Mustang")
boat1=Boat("Ibiza", "Touring 20")
plane1=Plane("Boeing", "747")

for i in (car1,boat1,plane1):
    i.move()


print("--------------------------------! ")
class Vehicale:
    def __init__(self,brand,model):
        self.brand=brand
        self.model=model

    def move(self):
        print("Move !")

class car(Vehicale):
    pass

class boat(Vehicale):
    def move(self):
        print("Sail !")

class plane(Vehicale):
    def move(self):
        print("Fly ! ")

c1=car("ford", "mustang")
b1=boat("Ibiza","touring 20 ")
p1=plane("Boeing","747")

for x in (c1,b1,p1):
    print(x.brand)
    print(x.model)
    x.move()



class Cat:
    def sound(self):
        print("Meow")

class Fox:
    def sound(self):
        print("Wa-pa-pa-pa_Pow !")

C1=Cat()
f1=Fox()

for animal in (C1,f1):
    animal.sound()



class Human:
    def __init__(self,name,village):
        self.name=name
        self.__village=village   # private property 


    def get_privatevalue(self):    
        return self.__village
    


h1=Human("Email",52)
print(h1.get_privatevalue())

class men:
    def __init__(self,name,age):
        self.name=name
        self.__age=age
     
    def get_age(self):
        return self.__age
    
    def set_age(self,age):
        if age>12:
            self.__age=age
        else:
            print("Age must be positive")

m1=men("Tobias",11)
print(m1.get_age())
m1.set_age(11)


class student:
    def __init__(self,name):
        self.name=name
        self.__grade=0

    def set_grade(self,grade):
        if 0<= grade <= 100:
            self.__grade=grade

        else:
            print("Grade must be between 0 and 100")

    def get_grade(self):
        return self.__grade
    
    def get_status(self):
        if self.__grade>=60:
            return "Passed"
        else:
            return "Failed"
        

s1=student("Email")
s1.set_grade(85)
print(s1.get_status())


class Calculator:
    def __init__(self):
        self.result=0

    def __validate(self,num):
        if not isinstance(num,(int,float)):
            return False
        return True
    
    def add (self,num):
        if self.__validate(num):
            self.result+=num
        else:
            print("Invalid number")


calc=Calculator()
calc.add(23)
calc.add(4)
print(calc.result)


class Scoreboard:
    def __init__(self,score):
        self.__score=score

    def get_score(self):
        return self.__score
    
S1=Scoreboard(0)
print(S1.get_score())


# Inner classes
class Outer:
    def __init__(self):
        self.name="Outer class"

    class inner:
        def __init__(self):
            self.name="inner class"

        def display(self):
            print("This is the inner class")

Outerr=Outer()
outerr=Outerr.inner()
print(outerr.name)
outerr.display()
print(Outerr.name)



'''

from abc import ABC , abstractmethod

# abstraction and encapsulation

class vehi(ABC):
    def __init__(self,brand,model):
        self.brand=brand
        self.__model=model  # encapsulation/private

    @abstractmethod
    def move(self):
        pass   

    def get_model(self):
        return self.__model     # Encapsulation access method
    
 # 2. Inheritance + Polymorphism

class car(vehi):
    def move(self):
        print(f"{self.brand} car moves on road")

class p(vehi):
    def move(self):
        print(f"{self.brand} plane flies in air ")

class b(vehi):
    def move(self):
        print(f"{self .brand}  boat sails on water")


v1=car("ford", "Mustang")
v2=p("Boeing",474)
v3=b("Ibiza", "touring 20")

for i in (v1,v2,v3):
    print(i.brand ,"-" ,i.get_model())
    i.move()