package Myproject02;

class Point2 {
	private int x, y;
	public void set (int x, int y) {
		this.x = x; this.y = y;
	}
	public void showPoint() {
		System.out.println("(" + x + "," + y + ")");
	}
}

class ColorPoint extends Point2 {
	private String color;
	public void setColor(String color) {
		this.color = color;
	}
	public void showColorPoint () {
		System.out.println(color);
		showPoint();
	}
}

public class ColorPointEx {

	public static void main(String[] args) {
		Point2 p = new Point2();
		p.set(1, 2);
		p.showPoint();
		
		ColorPoint cp = new ColorPoint();
		cp.set(3, 4);
		cp.setColor("red");
		cp.showColorPoint();
	}
	
}