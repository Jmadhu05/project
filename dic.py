'''
def greet():
    print("hello goodmorning ")


greet()

def sum(a,b):
    print(a*b)
sum(5,8)

def food(name):
    print("good morning",name)

food("madhu")

def car(input):
    return("defender")

print(car("hello"))

food("madhu")
food("madhu")
food("madhu")


def sum3(a,b,c,d):
    print(a*b*c*d)

sum3(456,523,154,546)

def car():
    pass

car()




def ren(hii):
    return(hii-56)

print(ren(85))
print(ren(256))
print(ren(5632))
print(ren(125))

sum(5,65)

def ter(tr):
    return(tr+654)*485

print(ter(547))

def hy():
    return("radhe radhe")

print(hy())


def jk():
    return "hello radhe radhe"

print(jk())'''
'''

print("Enter your name")
name= input()
print(f"hello {name}")

name=input()
print(name)

name=input("enter your name:")
print(f"hello{name}")'''
'''
name=input("enter your name:")
print(f"hello{name}")
f1=input("what is your favorite car:")
f2=input("what is your favorite color:")
f3= input("what is your lucky number :")
print(f"do you want a {f2} {f1} with {f3} legs ")
'''
'''def plus(name):
    print(f"{name}")
    f2=input("what is your age")
    f3=input("what is your favorite name")

plus("madhu")'''

'''def vv(number):
    print(f"{number}")
    c1=input("enter a number")
    c2=input("what is your name")

print(vv("number"))
'''
"""def cc(name):
    print(f"{name}")
    v1=input("name")

cc("krishna")"""


"""def my_function(fname):
    print(fname +  " refsnes")

my_function("email")
my_function("tobias")
my_function("linus")"""


"""def my_function(*i):
    h = 3,6,9,3,5
    print(h)

my_function(4)"""


"""x = 800
def hnlsh():
    global x
    x = 400
    print(x)

hnlsh()
print(x)"""
    
#Arbitrary Arguments - *args

"""def my_function(*name):
  print("Hello" + name[1])

my_function("hnlsh", "#hny#", "honey", "ishu")"""


"""def my_function(*age):
  print("Type:", type(age))
  print("First:", age[0])
  print("Second:", age[1])
  print("All:", age)

my_function("21", "22", "18","17")"""

"""def car_name(greet, *names):
  for h in names:
    print(greet, h)

car_name("frari", "mostag", "porsche", "Mercedes")"""


"""def names(*age):
  sum = 0
  for num in age:
    sum += num
  return sum
  
print(names(18,17,21))
print(names(11,4,8,2))
print(names(21,85, 96))"""



"""def this_function(*numbers):
  if len(numbers) == 0:
    return None
  max_num = numbers[0]
  for num in numbers:
    if num > max_num:
      max_num = num
  return max_num

print(this_function(3, 7, 2, 9, 1))"""

"""def hnlsh(*number):
    if len(number) == 0:
        return 
    num = number[2]
    for sum in number:
        if sum > num:
            num = sum
        return num    
    
print(hnlsh(4,8,5,9))"""

"""def my_function(username, **details):
  print("Username:", username)
  print("Additional details:")
  for key, value in details.items():
    print(" ", key + ":", value)

my_function("emil123", age = 25, city = "Oslo", hobby = "coding")"""

"""def my_function(**name):
  print("This name is " + name["middle"])

my_function(first = "mostang", middle = "frari", last =  "Mercedes")"""

"""def hny(**myname):
  print("Type:", type(myname))
  print("Name:", myname["name"])
  print("Age:", myname["age"])
  print("All data:", myname)

hny(name = "honey", age = 21, city = "sagai")"""

"""def city_name(**names):
    print("first", names["first"])
    print("second", names["second"])
    print("Type", type(names))

city_name(first = "sagai", second = "itali")
"""

"""def my_function(name, **age):
    print("username:", name)
    print("Add deatils:")
    for i, h in age.items():
         print(" ", i + ":", h)

my_function("ishu", age = 18, hobbey = "coding" , city = "sagai")"""


'''
def my_function(animal,name):
    print("i have a", animal)
    print("my",animal + "'s name is ",name)

my_function(name="buddy" , animal="cat")'''


'''
def sum(a,b):
    print(a*b)

sum(4,9)'''

# x= lambda a,b :a*b
# print(x(56,85))

'''y= lambda a,b,c,d : a*b +c -d
print(y(56,25,36,87))'''

'''def rr(name , neme):
    print(name + " " + neme)

rr("madhu", "verma")

def yy(name ="friend"):
    print("hello", name)

yy("nidhi")
yy("palak")
yy("yogendra")
yy("bandhu")

print(yy)
'''
'''
def uu(country="canada"):
    print("i am from", country)

uu("norway")
uu("swizerland")
uu("south korea")

print(uu("canada"))

def oo(car,name):
    print("i hava a",car  +  "car")
    print("my",car + "name is ",name)

oo(car="defender", name="buddy")'''
'''
def my_function(fruits):
    for fruit in fruits:
        print(fruit)

my_fruits=["apple","banana","papaya"]
my_function(my_fruits)'''
'''
def my_function(person):
    print("name:",person["name"])
    print("age:",person["age"])

my_person={"name":"madhu" ,"age":18}
my_function(my_person)

def y_function(x,y):
    return x+y

result = y_function(5,9)
print(result)'''

'''def my_function():
    return ["apple","banana","cherry"]

fruits =my_function()
print(fruits[0])
print(fruits[1])
print(fruits[2])

def my_function():
    return(10,27)

x,y =my_function()
print("x:",x)
print("y:",y)
'''
def my_function(name,/):
    print("hello",name)

my_function("madhu")



