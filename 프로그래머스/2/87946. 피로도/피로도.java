import java.util.*;

class Solution {
    static boolean[] visited;
    static int max;
    
    public int solution(int k, int[][] dungeons) {
        int answer = -1;
        visited = new boolean[dungeons.length];
        max = 0;
        
        dfs(k, dungeons, 0);
        
        
        return max;
    }
    
    private void dfs(int k, int[][] dugeons, int count) {
        for(int i = 0; i<dugeons.length; i++) {
            int minRequried = dugeons[i][0];
            int cost = dugeons[i][1];
            
            if(!visited[i] && minRequried <= k) {
                visited[i] = true;
                dfs(k-cost, dugeons, count+1);
                visited[i] = false;
            }
        }
        max = Math.max(max, count);
    }
}