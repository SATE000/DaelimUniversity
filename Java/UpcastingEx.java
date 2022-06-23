package Myproject02;

class Person {
	String name;
	String id;
	
	public Person(String name) {
		this.name = name;
	}
}

class Student extends Person {
	String Grade;
	String deparment;
	
	public Student (String name) {
		super(name);
	}
}

/*public class UpcastingEx {

	public static void main(String[] args) {
		Person p;
		Student s = new Student("이재문");
		p = s;
		
		System.out.println(p.name);
	}
	
}*/ //제거1

public class UpcastingEx/*DowncastingEx*/ {
	public static void main(String[] args) {
		Person p = new Student("이재문");
		Student s;
		
		s = (Student)p;
		
		System.out.println(s.name);
		s.Grade = "A";
	}
} //추가1