package Myproject02;

class SuperObject {
	protected String name;
	public void paint() {
		draw();
	}
	
	public void draw () {
		//System.out.println("Super Object"); //삭제1
		System.out.println(name);
	}
}

public class SubObject extends SuperObject{
	
	protected String name; //추가1
	public void draw () {
		//System.out.println("Sub Object"); //삭제1
		name = "Sub"; //추가1
		super.name = "Super"; //추가1
		super.draw(); //추가1
		System.out.println(name); //추가1
	}
	
	public static void main(String[] args) {
		SuperObject b = new SubObject();
		b.paint();
	}
	
}