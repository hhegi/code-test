package com.codetest;

import java.util.Arrays;

public class kNumber {

    public int[] solution(int[] array, int[][] commands) {
        //프로그래머스 K번째 수
        int[] answer = new int[commands.length];
 
        for(int i=0; i<commands.length; i++){
            int[] temp = Arrays.copyOfRange(array, commands[i][0]-1, commands[i][1]);
            Arrays.sort(temp);
            answer[i] = temp[commands[i][2]-1];
            
        }
 
        return answer;
    }
}
