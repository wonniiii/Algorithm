import heapq

def solution(n, k, enemy):
    answer = 0
    heap = []

    for i,e in enumerate(enemy):
        n -=e
        heapq.heappush(heap, -e)

        if n < 0:
            if k == 0:
                return i
            n += -heapq.heappop(heap)
            k -= 1
    return len(enemy)