package com.wrox.begspring.aspects;

import org.aspectj.lang.JoinPoint;

public class LoggingAspect {

public void logMethodExecutionIn(JoinPoint jp) {
        System.out.println("AOP logging in -> " + jp.toShortString());
        // System.err.println("entering: " + jp);
        // System.err.println("  w/args: " + jp.getArgs());
        // System.err.println("      at: " + jp.getSourceLocation());
    }

public void logMethodExecutionOut(JoinPoint jp) {
        System.out.println("AOP logging out -> " + jp.toShortString() + "\n");

    }
}