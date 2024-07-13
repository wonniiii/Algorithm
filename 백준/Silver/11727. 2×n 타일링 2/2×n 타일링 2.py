N = int(input())

arr2 = [1,3]

def dp2(n):
    for i in range(2,N):
        arr2.append(arr2[i-2]*2 + arr2[i-1])
    return arr2[N-1]

print(dp2(N)%10007)