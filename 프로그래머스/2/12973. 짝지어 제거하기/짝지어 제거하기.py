def solution(s):
    stack = []

    for char in s:
        stack.append(char)
        if len(stack) > 1 and stack[-1] == stack[-2]:
            stack.pop()
            stack.pop()

    return 1 if len(stack) == 0 else 0