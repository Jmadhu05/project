'''

try:
    print(name)
except:
    print("An exception occurred")


try:
    print('name')

except NameError:
    print("Variable a is not defined")
except:
    print("Something else went wrong")


try:
    print("Hello")

except:
    print("Something went wrong")

else:
    print("Nothing went wrong")

try:
    print(x)

except:
    print("Something went wrong")
finally:
    print("The 'try except' is finished")


a= -2
if a<0:
    raise Exception("Sorry , no number below zero ")


try:
    print(x)
except:
    print("An error occurred")
finally:
    print("Execution complete")



def one(a):
    def two():
        return a().upper()
    return two



@one
def greeting():
    return "hello sally"

print(greeting())

@one
def otherfunction():
    return "I am speed !"


print(otherfunction())



def changecase(v):
    def myinner(x):
        return v(x).upper()
    return myinner

@changecase
def myfunction(nam):
    return "Hello" +" "+ nam

print(myfunction('ram'))



def change(n):
    def change(func):
        def myinner():
            if n==1:
                a=func().lower()
            else:
                a=func().upper()
            return a
        return myinner
    return change

@change(5)
def my():
    return "Hello Linus"

print(my())

'''

def countdown(n):
    if n<0:
        print("Done !")
    else:
        print(n)
        countdown(n-1)


countdown(7)


def factorial(n):
    if n==0 or n==1:
        return 1
    else:
        return n*factorial(n-1)
    
print(factorial(5))
