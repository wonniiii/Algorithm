import java.util.*;

class Solution {
    public int solution(int[] citations) {
        Arrays.sort(citations);
        int answer = 0;
        
        for(int i = 0; i < citations[citations.length-1]; i++) {
            int big = 0;
            for(int j = 0; j<citations.length; j++) {
                if(i < citations[j]) {
                    big++;
                }
            }
            if(big <= i) {
                answer = i;
                break;
            }
        }
        
        
        return answer;
    }
}