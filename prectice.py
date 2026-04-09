'''def my_function(name):
    print(name +" "  + "hello")

my_function("madhu")
my_function("kartik")
my_function("bablu")

def myffu(name="friend"):
    print("hello",name )

myffu("ambika")
myffu("anishaka")
myffu("jasika")
myffu()
'''

'''def ff(animal , name):
    print("i have a" ,animal )
    print("my", animal + "'s name is ", name)

ff(animal="dog" , name="buddy ")

def bb(fruits):
    for fruit in fruits:
        print(fruit)

my_fruits =["apple","banana","cherry"]
bb(my_fruits)

def gg(person):
    print("name:" , person["name"])
    print("age :" , person["age"])

my_person={"name":"emil","age":25}
gg(my_person)

def my_cc(x,y):
    return x+y

result = my_cc(5,9)
print(result)'''

'''
def my_jj(name,/):
    print("hello", name)

my_jj("rankit")

def oo(* , name):
    print("hello how are you dear", name )

oo(name="john")'''
'''
def vv(a,b,/,*,c,d):
    return a +b +c + d 

result=vv(5,5,c=8,d=1)
print(result)


def my_function(* kids):
    print("the youngest child is "+ kids[2])

my_function("robias","totis","yoyo")


def bb(*args):
    print("type:" , type(args))
    print("first argument :" , args[0])
    print("second argument :" , args[1])
    print("all arguents :" , args)

bb("rama", "ridhi","robias")'''
'''
def my_function(*names):
    for i in names:
        print(i)

my_function("hello","emil", "tobias","linus")
'''
'''
def my_functon(person):
    print("name:",person["name"])
    print("country:",person["country"])
    
cross={"name":"ronak","country":"swizerland"}
my_functon(cross)


def my_jj(*number):
    total=0
    for num in number:
        total +=num
    return total

print(my_jj(1,2,5))
print(my_jj(1,20,30,40,50,60))
print(my_jj(0))

def my_pp(**name):
    print("his last name is "+ name["lname"])

my_pp(fname="aruna", lname="sharma")
'''

'''

def my_function(**co):
    print("type:",type(co))
    print("name:",co["name"])
    print("age:",co["age"])
    print("all name:", co)

my_function(name="vani" , age=23, country="london")


def my_pop(username,**details):
    print("username:",username)
    print("additional details:")
    for key, value in details.items():
        print(" ",key +":",value)

my_pop("ronika123",age=23, city="cananda" , hobby="coding")


'''
'''
for i in range(11):
    if i>=1:
        print(i)

for o in range(15):
    if o>=2:
        print(o)

x=range(2,15)
print(list(x))
x=range(5,15,2)
print(list(x))

for i in range(2,15,3):
    print(i)

print(list(range(5,20,3)))
'''
'''r=range(20)
print(r[2:19])
for i in r[2:19]:
    print(i)

i=range(0,10,2)
print(len(i))
print(7 in i)'''


# for i in range(0,5,1):
#     print(i)'''
'''
for i in range(0,50):
    if i% 2==0:
        print(i)

for i in range(0,50):
    if i %2==1:
        print(i)
'''

'''list=["computer","cpu","keyboard","mouse","printer"]
mylist=iter(list)

print(next(mylist))
print(next(mylist))
print(next(mylist))
print(next(mylist))

a="samayak computer classes neem ka thana"
mya=iter(a)

print(next(mya))
print(next(mya))
print(next(mya))

coo=("uk","canada","america","soudiarb")
for i in coo:
    print(i)
    for x in i:
        print(x)


name=3
match name:
    case 1:
        print("raghav")

    case 2:
        print("ramesh")

    case 3:
        print("kaira")

    case 4:
        print("harvinder")

car="defender"
match car:
    case "defender":
        print("my lucky car")

    case "maruti":
        print("maruti car  is second choice")

    case _:
        print("looking forward to the car name")
'''


'''


  
i=1
while i<6:
    print(i)

    if i==3:
        break
    i+=1

i=0
while i<15:
    i+=1
    if i==15:
        continue
    print(i)

a=0
while 3>2:
    a=a+1
    if a==5:
        break
    print("hello")
    
a=0
while 15>9:
    a=a+1
    if a==6:
        break

    print("hello")'''


    
i=0
while i<9:
    i+=1
    if i==5:
        continue
    print(i)




    

