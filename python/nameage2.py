print("Please type 'your name'.")
myName = input()
while myName != 'Adam':
    if myName == 'your name':
        print("That is a lame joke.")
    else:
        print("What is your real name?")
    myName = input()

print(myName + ". Nice!")