package Myproject02;

import java.io.*;

public class FileReaderEx {

	public static void main(String[] args) {
		FileReader in = null;
		try {
			//in = new FileReader("c:\\windows\\system.ini"); //해당파일을 c드라이브안에 새파일 만들고 복사 할것
			in = new FileReader("c:\\test\\system.ini");
			int c;
			while ((c = in.read()) != -1)
				System.out.print((char)c);
			in.close();
		} catch (IOException e) {
			System.out.println("입출력 오류");
		}
	}
	
}