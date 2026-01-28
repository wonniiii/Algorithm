def solution(s):
    answer = True
    stack = []

    for i in s:
        if stack and stack[-1] == '(' and i == ')':
            stack.pop()
            answer = True
        else:
            stack.append(i)
            answer = False
    if stack:
        answer = False
    return answer