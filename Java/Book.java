package Myproject01;

public class Book {

	String title;
	String author;
	void show() {System.out.println(title + " " + author);} //추가1
	
	public Book () {
		this("","");
		System.out.println("생성자 호출됨");
	}//추가1
	
	public Book (String title) {
		//title = t; author = "작자미상";
		this(title, "작자미상");//추가1
	}
	
	public Book (String title, String author) {
		//title = t; author = a;
		this.title = title; this.author = author;//추가1
	}
	
	public static void main(String[] args) {

		Book littlePrince = new Book("어린왕자", "생텍쥐베리");
		Book loveStory = new Book("춘향전");
		Book emptyBook = new Book();//추가1

		//System.out.println(littlePrince.title + " " + littlePrince.author);
		//System.out.println(loveStory.title + " " + loveStory.author);
		loveStory.show();//추가1
		littlePrince.show();//추가1
		emptyBook.show();//추가1
		
	}

}