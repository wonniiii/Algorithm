def solution(X, Y):
    from collections import Counter
    
    answer = ""
    
    count_x = Counter(X)
    count_y = Counter(Y)
    
    intersection = count_x & count_y
    
    if not intersection:
        return "-1"
    
    result = []
    for num, freq in intersection.items():
        result.extend([num] * freq)
    
    result.sort(reverse=True)
    answer = ''.join(result)
    
    if answer[0] == '0':
        return "0"
    
    return answer
