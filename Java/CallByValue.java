package Myproject01;

public class CallByValue {
	
	public int getSum(int i, int j) {
		int sum;
		sum = i + j;
		return sum;
	}
	
	static void increase (int m) {
		m += 1;
	}

	public static void main(String[] args) {

		//System.out.println(getSum(1,1));
		
		int n = 10;
		
		increase(n);
		
		System.out.println(n);
		
	}

}