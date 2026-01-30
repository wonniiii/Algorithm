def solution(n, stations, w):
    cover = 2 * w + 1
    pos = 1
    answer = 0

    for s in stations:
        left = s - w
        if pos < left:
            gap = left - pos
            answer += (gap + cover - 1) // cover

        pos = s + w + 1

    if pos <= n:
        gap = n - pos + 1
        answer += (gap + cover - 1) // cover


    return answer