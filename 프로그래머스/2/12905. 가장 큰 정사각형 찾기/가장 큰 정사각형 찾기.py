def solution(board):
    n = len(board)
    m = len(board[0])
    answer = 0

    for i in range(n):
        for j in range(m):
            if board[i][j] == 1 and j > 0 and i > 0:
                board[i][j] = min(
                    board[i-1][j],
                    board[i][j-1],
                    board[i-1][j-1]
                ) + 1
            answer = max(answer, board[i][j])
    return answer ** 2