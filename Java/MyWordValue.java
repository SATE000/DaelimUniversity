package Myproject02;

import java.util.Scanner;

public class MyWordValue {

	public static void main(String[] args) {
		char[] charArray;
		Scanner sc = new Scanner(System.in);
		System.out.println("점수를 알고 싶은 단어를 입력하세요.");
		System.out.println("종료하고 싶으면 END를 치세요.");
		while (true) {
			String word = sc.next();
			if (word.toUpperCase().equals("END")) {
				System.out.println("프로그램을 종료합니다.");
				break;
			}
			charArray = word.toCharArray();
			int charSum = 0;
			for (int i = 0; i < charArray.length; i++) {
				int iValue = Integer.valueOf(charArray[i]) - 'a' + 1;
				charSum += iValue;
			}
			System.out.println(word + "는 " +charSum + "점 입니다.");
		}
		sc.close();
	}
	
}