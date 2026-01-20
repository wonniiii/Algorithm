def solution(N, stages):

    count = [0] * (N+2)
    answer = [0] * N

    for i in stages:
        count[i] += 1

    remaining = len(stages)
    for i in range(N):
        stage = i + 1
        if remaining == 0:
            answer[i] = 0
        else:
            answer[i] = count[stage] / remaining
        remaining -= count[stage]

    sorted_answer = sorted(enumerate(answer, start = 1), key = lambda x: (-x[1], x[0]))


    return [stage for stage, _ in sorted_answer]
