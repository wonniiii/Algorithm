def solution(board, moves):
    answer = 0
    n = len(board)
    row = [0] * n
    stack = []
    
    for i in moves:
        for j in range(n):
            if board[j][i-1] != 0:
                if stack and stack[-1] == board[j][i-1]:
                    stack.pop()
                    answer += 2
                else:
                    stack.append(board[j][i-1])
                    
                board[j][i-1] = 0
                break
    
    return answer