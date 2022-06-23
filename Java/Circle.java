package Myproject01;

public class Circle {

	int radius;
//	String name;
//	
//	public Circle() {
//		radius = 1; name = "";
//	}//추가1
//	
//	public Circle (int r, String n) {
//		radius = r; name = n;
//	}//추가1
//	
//	public double getArea () {
//		return 3.14*radius*radius;
//	} //삭제1
//	
//	public static void main(String[] args) {
//
//		//Circle pizza;
//		//pizza = new Circle();
//		Circle pizza = new Circle(10, "자바피자");//삭제1
//		//pizza.radius = 10;
//		//pizza.name = "자바피자";
//		double area = pizza.getArea();
//		System.out.println(pizza.name + "의 면적은 " + area);
//		
//		Circle donut = new Circle();//추가1
//		//donut.radius = 2;2
//		//donut.name = "자바도넛";
//		donut.name = "자바도넛";
//		area = donut.getArea();
//		System.out.println(donut.name + "의 면적은 " + area);
//		
//	}
	
	public Circle (int radius) {
		this.radius = radius;
	}//추가2
//	void set (int radius) {
//		this.radius = radius;
//	}//추가2
	public void set (int radius) {
		this.radius = radius;
	}//추가3
	
//	public static void main(String[] args) {
//		
//		Circle ob1 = new Circle(1);
//		Circle ob2 = new Circle(2);
//		Circle ob3 = new Circle(3);
//	
//		System.out.println(ob1.radius);
//		System.out.println(ob2.radius);
//		System.out.println(ob3.radius);
//		
//		ob1.set(4);
//		ob2.set(5);
//		ob3.set(6);
//		
//		System.out.println(ob1.radius);
//		System.out.println(ob2.radius);
//		System.out.println(ob3.radius);
//		
//	}//추가2

	public static void main(String[] args) {
		
		Circle ob1 = new Circle(1);
		Circle ob2 = new Circle(2);
		Circle s;
		
		s = ob2;
		ob1 = ob2;
		System.out.println("ob1.radius=" + ob1.radius);
		System.out.println("ob2.radius=" + ob2.radius);
		
	}//추가3
	
}