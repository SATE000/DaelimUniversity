package Myproject01;
import java.util.Scanner;

public class OddOrEven {

	public static void main(String[] args) {

		Scanner s = new Scanner(System.in);
		
		while (true) {
			
			System.out.println("정수를 입력하세요:");
			int a = s.nextInt();
			
			if (a == 0) {
				System.out.println("0을 입력하셨습니다. \n프로그램을 종료합니다.");
				break;
			}
			
			if (a % 2 == 1)
				System.out.println("입력하신 정수는 홀수입니다.");
			else
				System.out.println("입력하신 정수는 짝수입니다.");
			
		}
		
		s.close();
		
	}

}