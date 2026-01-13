def solution(key, lock):
    
    def rotate90(arr):
        n = len(arr)
        return [[arr[n-1-j][i] for j in range(n)] for i in range(n)]

    key_n, lock_n = len(key), len(lock)
    size = lock_n + 2 * (key_n-1)

    board = [[0] * size for _ in range(size)]
    offset = key_n - 1

    for i in range(lock_n):
        for j in range(lock_n):
            board[offset+i][offset+j] = lock[i][j]

    def check_center():
        for i in range(lock_n):
            for j in range(lock_n):
                if board[offset+i][offset+j] != 1:
                    return False
        return True


    for _ in range(4):
        key = rotate90(key)

        for x in range(size-key_n+1):
            for y in range(size-key_n+1):
                for i in range(key_n):
                    for j in range(key_n):
                        board[x+i][y+j] += key[i][j]

                if check_center():
                    return True

                for i in range(key_n):
                    for j in range(key_n):
                        board[x+i][y+j] -= key[i][j]

    return False