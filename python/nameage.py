import time

start_time = time.time()
print("What is your name?")
myName = input()
print("Hello " +myName + ". That is a good name. How old are you?")
myAge = int(input())

if myAge < 13:
    print("You're a pre-teen turd.")
elif myAge == 13:
    print("New teens suck!")
elif myAge > 13 and myAge < 30:
    print("You're not as clever as you think you are.")
elif myAge >=30 and myAge < 65:
    print("You probably miss playing video games.")
else:
    print("You're on borrowed time.")

programAge = int(time.time() - start_time)
print("%s? That's funny, I'm only %s seconds old." % (myAge, programAge))
print("I wish I was " + str(int(myAge) * 2) + " years old.")
time.sleep(3)
print("I'm tired. I'm done. Goodnight!")