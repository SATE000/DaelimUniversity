package Myproject01;
import java.util.*;

public class MaxMinMiddle {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		System.out.println("정수를 5개를 입력하세요!");
		int intArray[];
		intArray = new int[5];
		
		for (int i = 0; i < intArray.length; i++) {
			System.out.print( (i+1) + "번째 정수를 입력하세요:" );
			intArray[i] = sc.nextInt();
		}
		
		Arrays.sort(intArray);
		
		System.out.println("최댓값은 " + intArray[4] + "입니다.");
		System.out.println("최솟값은 " + intArray[0] + "입니다.");
		System.out.println("중간값은 " + intArray[2] + "입니다.");
		
		sc.close();
		
	}

}