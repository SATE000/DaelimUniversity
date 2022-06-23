package Myproject02;

import java.io.*;

public class FileWriterEx {

	public static void main(String[] args) {
		InputStreamReader in = new InputStreamReader(System.in);
		
		FileWriter fout = null;
		int c;
		try {
			//fout = new FileWriter("c:\\Temp\\test.txt");
			fout = new FileWriter("c:\\test\\test.txt"); //c드라이브에 test파일 만들기
			while ((c = in.read()) != -1)
				fout.write(c);
			in.close();
			fout.close();
		} catch (IOException e) {
			System.out.println("입출력 오류");
		}
	}
	
}