import java.util.*;

class Solution {
    public int solution(int[] money) {
        int n = money.length;
        if(n == 1) return money[0];
        
        int case1 = steal(money, 0, n-2);
        int case2 = steal(money, 1, n-1);
        
        return Math.max(case1, case2);
    }
    
    private int steal(int[] money, int start, int end) {
        int[] dp = new int[money.length];
        dp[start] = money[start];
        dp[start+1] = Math.max(money[start], money[start+1]);
        
        for(int i = 2+start; i<=end; i++) {
            dp[i] = Math.max(dp[i-2]+money[i], dp[i-1]);
        }
        
        return dp[end];
    }
}