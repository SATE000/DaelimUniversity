package CoffeePrince;
import java.util.Scanner;

public class CoffeePrince {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("�޴� : ����������, īǪġ��, ī���, �Ƹ޸�ī��");
		
		System.out.print("���� Ŀ�� �帱���? ");
		String order = sc.next();
		
		int price = 0;
		
		switch (order) {
		case "����������": case "ī���": case "īǪġ��": {
			price = 3500;
			break;
		}
		case "�Ƹ޸�ī��": {
			price = 2000;
			break;
		}
		default:
			System.out.println("�޴��� �����ϴ�.");
		}
		
		if (price != 0) 
			System.out.println(order + "�� " + price + "���Դϴ�.");
		sc.close();

	}

}