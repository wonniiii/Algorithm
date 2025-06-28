import java.util.*;

class Solution {
    static boolean[][] visited;
    static int n, m;
    static int[][] step;
    static int[] dx = {0,0,1,-1};
    static int[] dy = {1,-1,0,0};
    static int[][] grid;
    
    public int solution(int[][] maps) {
        n = maps.length;
        m = maps[0].length;
        grid = maps;
        visited = new boolean[n][m];
        step = new int[n][m];
        
        bfs(0,0);
        
        return step[n - 1][m - 1] == 0 ? -1 : step[n - 1][m - 1];
    }
    
    static void bfs(int startX, int startY) {
        Queue<int[]> q = new LinkedList<>();
        visited[startX][startY] = true;
        step[startX][startY] = 1;
        q.offer(new int[]{startX, startY});
        
        while(!q.isEmpty()) {
            int[] cur = q.poll();
            int x = cur[0], y = cur[1];
            
            for(int dir = 0; dir<4; dir++) {
                int newX = x+dx[dir];
                int newY = y+dy[dir];
                
                if(inRange(newX,newY) && canGo(newX,newY)) {
                    visited[newX][newY] = true;
                    step[newX][newY] = step[x][y] + 1;
                    q.offer(new int[]{newX, newY});
                }
            }
        }
        
    }
    
    static boolean inRange(int x, int y) {
        return 0<=x && x<n && 0<=y && y<m;
    }
    
    static boolean canGo(int x, int y) {
        return !visited[x][y] && grid[x][y] == 1;
    }
}