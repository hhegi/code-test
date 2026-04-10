package com.codetest;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class SampleTest {

    @Test
    void sample() {
        int a = 2;
        int b = 3;
        assertEquals(5, a + b);
    }
}
