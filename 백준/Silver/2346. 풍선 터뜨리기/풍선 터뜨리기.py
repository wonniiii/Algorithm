from collections import deque

N = int(input())
deq = deque(enumerate(map(int, input().split())))
answer = []

while deq :
    index, now_turn = deq.popleft()
    answer.append(index + 1)
    if now_turn > 0:
        deq.rotate(-(now_turn-1))
    else:
        deq.rotate(-now_turn)


print(' '.join(map(str, answer)))