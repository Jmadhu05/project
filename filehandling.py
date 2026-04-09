'''
f=open("file.txt")


# with open("file.txt") as f:
#     print(f.read())


print(f.readline())
print(f.readline())

print(f.read(10))



with open("file.txt") as o:
    for i in o:
        print(i)


with open("file.txt" , "a")  as n:
    n.write("to write to an existing file, you must add a parameter to the open()")
   
with open("file.txt") as h:
    print(h.read())

'''
# import os
# os.remove("file.txt")

import os 
if os.path.exists("file.txt"):
    os.remove("file.txt")
else:
    print("The  file does not exist")