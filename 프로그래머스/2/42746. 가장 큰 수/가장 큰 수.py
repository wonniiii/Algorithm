from functools import cmp_to_key

def solution(numbers):
    answer = ''
    
    arr = list(map(str, numbers))
    
    def compare(a, b):
        if a + b > b + a:
            return -1
        elif a + b < b + a:
            return 1
        else:
            return 0
    
    arr.sort(key=cmp_to_key(compare))
    answer = ''.join(arr)
    
    if answer[0] == '0':
        return '0'
    
    return answer
