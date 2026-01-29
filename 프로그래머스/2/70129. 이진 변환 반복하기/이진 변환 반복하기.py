def solution(s):
    answer = [0, 0]  

    while s != "1":
        text = ""

        for i in range(len(s)):
            if s[i] == "0":
                answer[1] += 1
            else:
                text += s[i]

        s = format(len(text), "b")
        answer[0] += 1

    return answer
