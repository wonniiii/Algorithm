T = int(input())

def func(x):
    if x == 1:
        return 1
    elif x == 2:
        return 2
    elif x == 3:
        return 4
    else:
        return func(x-1)+func(x-2)+func(x-3)
    
for i in range(T):
    a = int(input())
    print(func(a))