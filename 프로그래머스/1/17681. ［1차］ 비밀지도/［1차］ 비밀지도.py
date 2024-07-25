def solution(n, arr1, arr2):
    answer = []
    str1 = ""
    str2 = ""
    strn = str(n)+'b'
    for i in range(0,n):
        str_res = ""
        str1 = format(arr1[i], strn)
        str2 = format(arr2[i], strn)
        
        for a1, a2 in zip(str1, str2):
            if a1 == "1" or a2 == "1":
                str_res += "#"
            else:
                str_res += " "
        answer.append(str_res)

    return answer

def binaryNum(num, n):
    res = ""
    while num != 1:
        op = num % 2
        res += str(op)
        num = num // 2
    res += "1"
    
    for _ in range(n-len(res)):
        res += "0"
    
    return res [::-1]