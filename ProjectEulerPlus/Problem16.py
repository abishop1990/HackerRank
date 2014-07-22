#Project Euler Plus Problem 16 in Pyuthon
#Because python...and learning!
#Written by Alan Bishop 7/22/14


def sumOfPowerDigits(N):
    digits = list(str(2**N))
    sum = 0
    for i in digits:
        sum += int(i)
    return sum
                                
                                                        
                                            
T = int(input())
for i in range(T):
    N = int(input())     
    print(sumOfPowerDigits(N))
