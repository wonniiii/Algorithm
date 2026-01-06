def solution(tickets):
    
    tickets.sort()
    used = [False] * len(tickets)
    def dfs(current, path, used_count):
        if used_count == len(tickets):
            return path

        for i in range(len(tickets)):
            if tickets[i][0] == current and not used[i]:
                used[i] = True
                res = dfs(tickets[i][1], path+[tickets[i][1]], used_count+1 )
                if res:
                    return res
                used[i] = False
        return None
    return dfs("ICN", ["ICN"], 0)