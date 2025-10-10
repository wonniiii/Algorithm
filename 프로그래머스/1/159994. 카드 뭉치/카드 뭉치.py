from collections import deque

def solution(cards1, cards2, goal):
    q1 = deque(cards1)
    q2 = deque(cards2)
    
    for i in goal:
        if q1 and q1[0] == i:
            q1.popleft()
        elif q2 and q2[0] == i:
            q2.popleft()
        else:
            return "No"
            
    return "Yes"