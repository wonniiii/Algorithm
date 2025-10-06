from collections import deque

def solution(s):
    if len(s) % 2 != 0:
        return 0
    
    pairs = {')':'(', ']':'[', '}':'{'}
    q = deque(s)
    answer = 0
    
    for _ in range(len(s)):
        valid = True
        stack = []
        
        for ch in q:
            if ch in '([{':
                stack.append(ch)
            else:
                if not stack or stack[-1] != pairs[ch]:
                    valid = False
                    break  
                stack.pop()
                
        if valid and not stack:
            answer += 1
            
        q.append(q.popleft())
    
    return answer
    
    