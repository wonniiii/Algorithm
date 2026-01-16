def solution(routes):
    answer = 0
    routes.sort(key=lambda x: x[1])
    camera = -30001

    for s, e in routes:
        if s > camera:
            answer += 1
            camera = e

    return answer