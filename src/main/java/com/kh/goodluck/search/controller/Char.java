package com.kh.goodluck.search.controller;

public class Char {

	public static void main(String[] args) {
		
		String str = "Java FrameWork";
		char arr[] = str.toCharArray();
		int count = 0;
		
		for (int i = 0; i < arr.length; i++) {
			if(arr[i] == 'a') {
				count++;
			}
		}
		System.out.println("A의 갯수 : " + count);
	}
}
