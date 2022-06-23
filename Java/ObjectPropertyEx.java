package Myproject02;

class Point {
	private int x, y;
	
	public Point (int x, int y) {
		this.x = x; this.y = y;
	}
	public String toString () {
		return "Point(" + x + "," + y + ")";
	}//추가1
}

public class ObjectPropertyEx {

	public static void main(String[] args) {

		/*Point p = new Point(2,3);
		
		System.out.println(p.getClass().getName());
		System.out.println(p.hashCode());
		System.out.println(p.toString());*/ //삭제1
		
		Point a = new Point(2, 3);//추가1
		
		System.out.println(a.toString());//추가1
		System.out.println(a);//추가1
		
	}

}