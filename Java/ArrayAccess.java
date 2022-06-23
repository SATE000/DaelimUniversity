package Myproject01;
import java.util.Scanner;

public class ArrayAccess {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		int intArray[];
		intArray = new int[5];
		int max = 0;
		System.out.println("양수 5개를 입력하세요.");
		
		for (int i = 0; i < intArray.length; i++) {
			intArray[i] = sc.nextInt();
			if(intArray[i] > max) max = intArray[i];
		}
		
		System.out.print("가장 큰 수는" + max + "입니다.");
		
		sc.close();
		
	}

}