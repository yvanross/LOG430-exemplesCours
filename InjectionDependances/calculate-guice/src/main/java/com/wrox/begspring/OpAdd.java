package com.wrox.begspring;

public class OpAdd implements Operation {

	public OpAdd() {
	}

	public String getOpsName() {
    // is logged in
		return " plus ";
	}

	public long operate(long op1, long op2) {
// is logged in
		return op1 + op2;
	}

} 
