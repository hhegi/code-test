package com.codetest;
import java.util.*;

public class watermelon {
    //프로그래머스 수박수박수박수박수박수?
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int m = 0;
        String p = "수박";
        if (n % 2 == 0) {//짝수
            //System.out.println("짝수");
            m = (n-2)/2;
            for(int i=0;i<m;i++){
                p = p.concat("수박");
            }
        } else {//홀수
            //System.out.println("홀수");
            p ="수";
            m = (n-1)/2;
            for(int i=0;i<m;i++){
                p = p.concat("박수");
            }
        }
        sc.close();
        System.out.print(p);
    }
}
