def solution(s):
    stack = [s[0]]
    answer = 0
    
    for i in range(1,len(s)):
        if stack and s[i] == stack[-1]:
            stack.pop()
        else:
            stack.append(s[i])
    
    if not stack:
        answer = 1
    else:
        answer = 0
        
    return answer
        