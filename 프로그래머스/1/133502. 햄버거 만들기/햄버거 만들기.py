def solution(ingredient):
    answer = 0
    stack = []

    for item in ingredient:
        stack.append(item)

        if len(stack) >= 4 and stack[-4:] == [1, 2, 3, 1]:
            answer += 1
            stack[-4:] = []

    return answer

