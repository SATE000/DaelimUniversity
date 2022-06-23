package Myproject02;

import java.io.*;

public class BinaryCopy {

	public static void main(String[] args) {
		/*File src = new File("c:\\Temp\\img.jpg");
		File dest = new File("c:\\Temp\\back.jpg");*/ //img파일은 먼저 생성후 class실행
		File src = new File("c:\\test\\img.jpg");
		File dest = new File("c:\\test\\back.jpg");
		int c;
		
		try {
			FileInputStream fi = new FileInputStream(src);
			FileOutputStream fo = new FileOutputStream(dest);
			while ((c = fi.read())!=-1)
				fo.write((byte)c);
			fi.close();
			fo.close();
			System.out.println(src.getPath() + "를" + dest.getPath() + "로 복사하였습니다.");
		} catch (IOException e) {
			System.out.println("파일 복사 오류");
		}
	}
	
}