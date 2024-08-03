def solution(board, h, w):
    dx, dy = [0,0,1,-1], [1,-1,0,0]
    answer = 0
    n = len(board)
    for i in range(0,4):
        new_x = h+dx[i]
        new_y = w+dy[i]
        if (0<= new_x <n) and (0<= new_y < n) :
            if (board[h][w] == board[new_x][new_y]):
                answer += 1
    
    return answer