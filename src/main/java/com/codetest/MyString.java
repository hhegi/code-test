package com.codetest;

import java.util.Arrays;
import java.util.Comparator;
import java.util.*;

public class MyString {
    //프로그래머스 문자열 내 마음대로 정렬하기
    public String[] myString(String[] strings, int n){
        return Arrays.stream(strings).sorted(Comparator.comparingInt((String s)-> s.charAt(n)).thenComparing(Comparator.naturalOrder())).toArray(String[]::new);
    }
    
}
