package Myproject02;

/*class A {
	public A () {
		System.out.println("생성자A");
	}
}

class B extends A {
	public B () {
		System.out.println("생성자B");
	}
}

class C extends B {
	public C () {
		System.out.println("생성자C");
	}
}

public class ConstructorEx_first {

	public static void main(String[] args) {
		C c;
		c = new C();
	}
	
}*/ //삭제1

class A {
	public A () {
		System.out.println("생성자A");
	}
	public A (int x) {
		System.out.println("매개변수생성자A");
	}
} //추가1

class B extends A {
	public B () {
		System.out.println("생성자B");
	}
	public B (int x) {
		System.out.println("매개변수생성자B");
	}
} //추가1

public class ConstructorEx/*ConstructorEx3*/ {

	public static void main(String[] args) {
		B b;
		b = new B(5);
	}
	
} //추가1