def solution(n, arr1, arr2):
    answer = []
    str1 = ""
    str2 = ""
    
    for i in range(0,n):
        str_res = ""
        str1 = format(arr1[i], 'b').zfill(n)
        str2 = format(arr2[i], 'b').zfill(n)
        
        for a1, a2 in zip(str1, str2):
            if a1 == "1" or a2 == "1":
                str_res += "#"
            else:
                str_res += " "
        answer.append(str_res)

    return answer