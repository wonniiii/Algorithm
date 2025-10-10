def solution(n, k, cmd):
    prev = [i-1 for i in range(n)]
    next = [i+1 for i in range(n)]
    next[n-1] = -1
    cur = k
    trash = []
    
    for i in cmd:
        op = i[0]
        if op == 'U':
            x = int(i.split()[1])
            for _ in range(x):
                cur = prev[cur]
        elif op == 'D':
            x = int(i.split()[1])
            for _ in range(x):
                cur = next[cur]
        elif op == 'C':
            trash.append((cur, prev[cur], next[cur]))
            
            if prev[cur] != -1:
                next[prev[cur]] = next[cur]
            if next[cur] != -1:
                prev[next[cur]] = prev[cur]
            
            cur = next[cur] if next[cur] != -1 else prev[cur]
        else:
            i,p,n2 = trash.pop()
            
            if p != -1:
                next[p] = i
            if n2 != -1:
                prev[n2] = i
            
            prev[i] = p
            next[i] = n2
    
    answer = ['O'] * n
    for i, _, _ in trash:
        answer[i] = 'X'
        
    return ''.join(answer)