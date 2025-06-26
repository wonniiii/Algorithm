import java.util.*;

class Solution {
    public int solution(int[][] triangle) {
        int answer = 0;
        int n = triangle[triangle.length-1].length;
        int[][] dp = new int[n][n];
        
        dp[0][0] = triangle[0][0];
        
        for(int i = 1; i<n; i++) {
            dp[i][0] = dp[i-1][0] + triangle[i][0];
        }
        
        for(int i = 1; i<n; i++) {
            for(int j = 1; j<triangle[i].length; j++) {
                dp[i][j] = Math.max(dp[i-1][j], dp[i-1][j-1]) + triangle[i][j];
            }
        }
        
        for(int i = 0; i<n; i++) {
            answer = Math.max(dp[n-1][i], answer);
        }
        
        return answer;
    }
}