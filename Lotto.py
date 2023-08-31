from random import randrange
import datetime

WNumbers1 = []
WNumbers2 = []
WNumbers3 = []
WNumbers4 = []
lottoMoney = 0

#Date Today
araw = datetime.datetime.now()

#Random Winning Numbers
for num in range(1, 7):
    WNumbers1.append(randrange(42 + 1))
for num in range(1, 7):
    WNumbers2.append(randrange(45 + 1))
for num in range(1, 7):
    WNumbers3.append(randrange(49 + 1))
for num in range(1, 4):
    WNumbers4.append(randrange(20 + 1))

#Print Date
print("The date today: ")
print(araw)

#Print Winning Numbers
print("\n")
print("Yesterday's Winning numbers: ")
print("\n")
print('Lotto In 6/42 : \n' + str(WNumbers1))
print("\n")
print('Mega Lotto In 6/45: \n' + str(WNumbers2))
print("\n")
print('Super Lotto In 6/49: \n' + str(WNumbers3))
print("\n")
print('Lucky Numbers: \n' + str(WNumbers4))
print("\n")

print("Would you like to play?")
picks = input("[y] for yes [n] for no\n\n").upper()


#Play Again
while picks == "Y":
    lottoMoney = lottoMoney + 1000
    
    
    #Starting Lotto game
    print("Pick Lotto Game: \n")
    print("1. Lotto Prize Pool (" + str(lottoMoney) + ")")
    print("2. Mega Lotto Prize Pool (" + str(lottoMoney) + ")")
    print("3. Super Lotto Prize Pool (" + str(lottoMoney) + ")")
    print("4. Lucky Numbers Prize Pool (" + str(lottoMoney) + ")")
    print("5. Win Sign (Press 1 only)")
    pili1 = int(input("\nPick your game: \n"))

    #1. Lotto
    if pili1 == 1:
        DrawNumbers = []
        Count = 0
        #For six(6) Inputs
        while True:
            if Count != 6:
                sulat = int(input("Pick a Number: "))
                if sulat > 42 or sulat < 1:
                    print("Pick your Number Again")
                    
                else:
                    DrawNumbers.append(sulat)
                    Count = Count + 1
                    print(DrawNumbers)
            if DrawNumbers != list(dict.fromkeys(DrawNumbers)):
                Count = Count - 1
                DrawNumbers.pop()
                print("Please Enter other number")
                print(DrawNumbers)
            if Count == 6:
                break

        Wnum = []
        for num1 in range(1, 7):
            Wnum.append(randrange(42 + 1))
        
        print('This is Your Numbers ' + str(DrawNumbers))
        print('This is the numbers of the Lotto' + str(Wnum))

        #Game Wins
        if DrawNumbers == Wnum:
            print("Congrats you win *" + prize1 + "* cash")
            print("\n")
            print("\n")

            
        #Game Loses
        else:
            print("Sorry Better Luck Next Time!!!!")
            print("\n")
            print("\n")

    
    #2. Mega Lotto
    elif pili1 == 2:
        DrawNumbers = []
        Count = 0
        #For six(6) Inputs
        while True:
            if Count != 6:
                sulat = int(input("Pick a Number: "))
                if sulat > 42 or sulat < 1:
                    print("Pick your Number Again")
                    
                else:
                    DrawNumbers.append(sulat)
                    Count = Count + 1
                    print(DrawNumbers)
            if DrawNumbers != list(dict.fromkeys(DrawNumbers)):
                Count = Count - 1
                DrawNumbers.pop()
                print("Please Enter other number")
                print(DrawNumbers)
            if Count == 6:
                break
        Wnum = []
        for num1 in range(1, 7):
            Wnum.append(randrange(45 + 1))
        
        print('This is Your Numbers ' + str(DrawNumbers))
        print('This is the numbers of the Lotto' + str(Wnum))

        #Game Wins
        if DrawNumbers == Wnum:
            print("Congrats you win *" + prize2 + "* cash")
            print("\n")
            print("\n")

            
        #Game Loses
        else:
            print("Sorry Better Luck Next Time!!!!")
            print("\n")
            print("\n")

    #3. Super Lotto
    elif pili1 == 3:
        DrawNumbers = []
        Count = 0
        #For six(6) Inputs
        while True:
            if Count != 6:
                sulat = int(input("Pick a Number: "))
                if sulat > 49 or sulat < 1:
                    print("Pick your Number Again")
                    
                else:
                    DrawNumbers.append(sulat)
                    Count = Count + 1
                    print(DrawNumbers)
            if DrawNumbers != list(dict.fromkeys(DrawNumbers)):
                Count = Count - 1
                DrawNumbers.pop()
                print("Please Enter other number")
                print(DrawNumbers)
            if Count == 6:
                break
        Wnum = []
        for num1 in range(1, 7):
            Wnum.append(randrange(49 + 1))
        
        print('This is Your Numbers ' + str(DrawNumbers))
        print('This is the numbers of the Lotto' + str(Wnum))

        #Game Wins
        if DrawNumbers == Wnum:
            print("Congrats you win *" + prize3 + "* cash")
            print("\n")
            print("\n")


        #Game Loses
        else:
            print("Sorry Better Luck Next Time!!!!")
            print("\n")
            print("\n")

    #4. Lucky Number
    elif pili1 == 4:
        DrawNumbers = []
        Count = 0
        #For six(6) Inputs
        while True:
            if Count != 3:
                sulat = int(input("Pick a Number: "))
                if sulat > 20 or sulat < 1:
                    print("Pick your Number Again")
                    
                else:
                    DrawNumbers.append(sulat)
                    Count = Count + 1
                    print(DrawNumbers)
            if DrawNumbers != list(dict.fromkeys(DrawNumbers)):
                Count = Count - 1
                DrawNumbers.pop()
                print("Please Enter other number")
                print(DrawNumbers)
            if Count == 3:
                break
            
        Wnum = []
        for num1 in range(1, 4):
            Wnum.append(randrange(20 + 1))
        
        print('\nThis is Your Numbers \n' + str(DrawNumbers))
        print("\n")
        print('\nThis is the numbers of the Lotto' + str(Wnum))
        print("\n")


        #Game Wins
        if DrawNumbers == Wnum:
            print("Congrats you win *" + prize4 + "* cash")
            print("\n")
            print("\n")


        #Game Loses
        else:
            print("Sorry Better Luck Next Time!!!!")
            print("\n")
            print("\n")
    #5. Win Number
    elif pili1 == 5:
        DrawNumbers = []
        Wnum = [1]

        sulat = int(input("Draw Your Number: "))
        DrawNumbers.append(sulat)
        
        #Game Wins
        if DrawNumbers == Wnum:
            print("Congrats you win!!")
            print("\n")
            print("\n")


        #Game Loses
        else:
            print("Sorry Better Luck Next Time!!!!")
            print("\n")
            print("\n")
            
    #Wrong Input in Pick Lotto Game
    else:
        print("Sorry Wrong Number Input")

    #Play Again Question
    print("Would you like to play?")
    picks = input("[y] for yes [n] for no\n\n").upper()


    
#Second Respo  
while picks == "N":
    print("Thank You!")
    break

#Invalid Input in Play Again
while picks != "N" or "Y":
    print("Sorry Wrong Input")
    break
