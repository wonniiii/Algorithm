def solution(babbling):
    answer = 0
    words = ["aya", "ye", "woo", "ma"]

    for b in babbling:
        cnt = 0
        prev = ""
        ok = True


        while cnt < len(b):
            match = False

            for w in words:
                if b.startswith(w, cnt) and prev != w:
                    cnt += len(w)
                    prev = w
                    match = True
                    break

            if not match:
                ok = False
                break

        if ok:
            answer += 1

    return answer