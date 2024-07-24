def solution(number, limit, power):
    answer = 0
    arr = []
    for i in range(number):
        if divisor(i+1) > limit:
            arr.append(power)
        else:
            arr.append(divisor(i+1))
    return sum(arr)

def divisor(num):
    res = 0
    for i in range(1, int(num**(1/2))+1):
        if num % i == 0:
            res += 1
            if i < num//i:
                res += 1
    return res