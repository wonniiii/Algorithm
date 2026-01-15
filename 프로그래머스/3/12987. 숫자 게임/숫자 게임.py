def solution(A, B):
    A.sort()
    B.sort()

    a = len(A) - 1
    b = len(B) - 1
    score = 0

    while a >= 0:
        if B[b] > A[a]:
            score += 1
            b -= 1
        a-= 1

    return score