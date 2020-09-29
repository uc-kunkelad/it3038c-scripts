import random

#Generates random number
randomNumber = int(random.randrange(0, 100))

#User input for number guess
print('Please pick an integer between 0 and 100.')
yourNumber = int(input())

#While loop runs until the input matches the random number
while yourNumber != randomNumber:
    #Checks if input is too low
    if yourNumber < randomNumber:
        print('%s is too low. Please try again.' % (yourNumber))
        yourNumber = int(input())
    #Checks if input is too high
    elif yourNumber > randomNumber:
        print('%s is too high. Please try again.' % (yourNumber))
        yourNumber = int(input())
else:
    print('%s is Right on!' % (yourNumber))