def solution(arr):
    n = len(arr)
    one = 0
    zero = 0

    def quad(x,y,dist):
        nonlocal zero, one
        start = arr[x][y]
        same = True

        for i in range(x,x+dist):
            for j in range(y,y+dist):
                if start != arr[i][j]:
                    same = False
                    break

            if not same:
                break

        if same:
            if start == 0:
                zero += 1
            else:
                one += 1
            return

        half = dist // 2

        quad(x, y, half)
        quad(x, y+half, half)
        quad(x+half, y, half)
        quad(x+half, y+half, half)


    quad(0,0,n)
    return [zero, one]