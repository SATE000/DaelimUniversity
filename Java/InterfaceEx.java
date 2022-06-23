package Myproject02;

/*class SamsungPhone implements PhoneInterface {
	@Override
	public void sendCall() {
		System.out.println("띠리리리링");
	}
	
	@Override
	public void receiveCall() {
		System.out.println("전화가 왔습니다.");
	}
	
	public void flash () {
		System.out.println("전화기에 불이 켜졌습니다.");
	}
}*/ //삭제1

class Calc {
	public int calculate (int x, int y) {
		return x + y;
	}
} //추가1

class SmartPhone extends Calc implements PhoneInterface {
	@Override
	public void sendCall() {
		System.out.println("따르릉따르릉~~");
	}
	
	@Override
	public void receiveCall() {
		System.out.println("전화 왔어요.");
	}
	public void schedule () {
		System.out.println("일정 관리합니다.");
	}
} //추가1

public class InterfaceEx {
	
	/*public static void main(String[] args) {
		SamsungPhone phone = new SamsungPhone();
		phone.printLogo();
		phone.sendCall();
		phone.receiveCall();
		phone.flash();
	}*/ //삭제1
	
	public static void main(String[] args) {
		SmartPhone phone = new SmartPhone();
		phone.printLogo();
		phone.sendCall();
		System.out.println("3과 5를 더하면 " + phone.calculate(3, 5));
		phone.schedule();
	} //추가1
	
}