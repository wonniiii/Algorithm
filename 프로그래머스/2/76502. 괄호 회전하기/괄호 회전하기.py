def solution(s):
    answer = 0
    def is_vaild(s):
        stack = []
        pair = {')' : '(', ']': '[','}':'{'}
        
        for ch in s:
            if ch in "{([":
                stack.append(ch)
            else:
                if not stack or stack[-1] != pair[ch]:
                    return False
                stack.pop()
        return not stack
    
    for _ in range(len(s)):
        if is_vaild(s):
            answer += 1
        s = s[1:] + s[0]
    return answer