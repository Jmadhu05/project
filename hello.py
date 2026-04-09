'''
num=int(input("Enter number :"))

if num%2==0:
    print("Even")

else:
    print("Odd")

print(type(num))


age=int(input("Enter your age :"))

print(age+5)


deci=input("Enter decimal number :")

print(deci)
a=float(deci)
print(int(a))

b=4
c=9
print(b+c)
print(b-c)
print(b*c)
print(b/c)
print(b%c)
print(b//c)
one=int(input("Enter a number"))
if one%2==0:
    print('Even')
else:
    print('Odd')

Age=int(input("Enter your age :"))

if Age >=18:
    print("Eligible for vote")

else:
    print("Not eligible")  
    

number1=int(input("Enter a number :"))
number2=int(input("Enter second Number :"))


if number1<number2:
    print(number2,"this is a big number")
else:
    number1>number2
    print(number1,"this is a big number")
    

mark=int(input("Enter a mark"))

if mark>=90:
     print("A")
elif mark>=60:
     print("B")
else:
    print("fail")

name=input("Enter your name :")
age=int(input("Enter your age :"))

print(f"Hello {name} , you are {age} years old.")

threenumber=int(input("Enter a number :"))
if threenumber%3==0:
    print("Divisible")
else:
    print("Not Divisible")


vote=int(input("Enter your age :"))
if vote <=12:
    print("child")
elif vote<=59 and vote>=20:
    print("Adult")
elif vote>=13 and vote<=19:
    print("Teenager")
else:
    print("senior")


tablee=int(input("Enter a number"))

if tablee%2==0 and tablee%3==0:
    print("Divisible by 6")
elif tablee%2==0:
    print("Even")
elif tablee%3==0:
    print("Divisible by 3")
else:
    print("None")
    


small=int(input("Enter a number : "))
small2=int(input("Enter a number : "))
small3=int(input("Enter a number : "))


if small<small2 and small<small3:
    print(f"very small number {small}")

elif small2<small and small2<small3:
    print(f"very small numberr {small2}")

elif small3<small and small3<small2:
    print(f"small number {small3}")

else:
    print("no small number")
    

text=input("Enter a string :")

if "Python" in text:
    print("yes")
else:
    print("No")


s=int(input("Enter a number"))
cu=int(input("Enter a number"))

print(s**2)
print(cu**3)


one=int(input("Enter a number :"))


if one>0:
    print("Postive")
elif one<0:
    print("Negative")
else:
    print("Zero")

if one%7==0:
    print(one%7)


# decorator
def fun(func):
    def innerr():
        print("start")
        func()
        print('end')
    return innerr

def say():

    print("hello how are you")

say=fun(say)
say()


print("------------------------------")
def change(funs):
    def myinner():
        return funs().upper()
    return myinner

@change
def myfunction():
    return 'Hello sally'
@change
def otherfunction():
    return 'I am speed !'

print(myfunction())
print(otherfunction())


def show(hee):
    def noo(x):
        return hee(x).capitalize()
    return noo

@show
def hi(name):
    return 'HELLO' +" "+ name

print(hi('NAMAn'))

def case(n):
    def case(func):
        def myinner():
            if n==5:
                a=func().upper()
            else:
                a=func().lower()
            return  a
        return myinner
    return case

@case(5)
def functio():
    return "Hello how are you, say 'Radhe radhe'"

print(functio())


def changee(func):
    def myinner():
        return func().upper()
    return myinner

def addgreeting(func):
    def myinner():
        return "Hello" + "  "+ func() +" "+ "Have a good day and say 'RADHE RADHE'"
    return myinner

@changee
@addgreeting
def myfunction():
    return "jaani"

print(myfunction())


print("------------------------------")
# lambda
nums=[1,2,3,4]
squared=list(map(lambda x: x**2, nums))
print(squared)

def sum(a):
    return a**2

print(sum(4))


print("------------------------------")
# iterators
tour=("uttrakhand","jammu & kashmir","karnatak")
mytour=iter(tour)
print(next(mytour))
print(next(mytour))
print(next(mytour))

print("------------------------------")
mystr="uttrakhand"
strr=iter(mystr)
print(next(strr))
print(next(strr))
print(next(strr))
print(next(strr))
print(next(strr))

print("------------------------------")
# module
import platform
x= platform.system()
print(x)
y=dir(platform)
print(y)


print("------------------------------")
# try except else finally 

try:
    print(a)   
except:                # block lets you handle the error
    print("An exception occurred")

print("------------------------------")
try:
    print(x)
except NameError:
    print("Variable x is not defined")
except:
    print("Something else went wrong")


print("------------------------------")
# else     koi bhi error nhi to except ko skip krega or else print hoga
try:
    print("Hello")
except:
    print("Something went wrong")
else:
    print("Nothing went wrong")     

print("------------------------------")
# finally    error ho ya nhi print krega
try:
    print(p)
except:
    print("Something went wrong")
finally:
    print("The 'try except' is finished .")

print("------------------------------")

try:
    num=int(input("Enter a number :"))
    print("You entered:",num)
except ValueError:
    print("That's not a valid number !")

print("------------------------------")

try:
    a=int(input("Enter a number :"))
    b=int(input("Enter another number :"))
    print(a/b)
except ValueError:
    print("Invalid input ! please enter a number.")
except ZeroDivisionError:
    print("Cannot divide by zero!")

print("------------------------------")
try:
    x=int(input("enter a number :"))
    print(10/x)
except:
    print("Something went wrong!")
    
print("------------------------------")

try:
    f=open("tax.txt")
    try:
        f.write("Lorum Ipsum")
    except:
        print("Something went wrong when writing to the file")
    finally:
        f.close()
except:
    print("Something went wrong when opening the file ")

print("------------------------------")

# String formatting

price=int(input("Enter your budget :"))
pack=f"It is very {'Expensive' if price>60 else 'cheap'}"
print(pack)

'''

print("------------------------------")
# recursion

'''
def greet():
    print("Hello good morning")
    greet()


greet()

#maximum recursion depth exceeded
'''

def sum(n):
    if n<=0:
        print("Done")
    else:
        print(n)
        sum(n-1)

sum(6)


