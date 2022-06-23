package Myproject02;

import java.io.*;
import java.net.*;
import java.util.*;

public class ClientEx {

	public static void main(String[] args) {
		BufferedReader in = null;
		BufferedWriter out = null;
		Socket socket = null;
		Scanner sc = new Scanner(System.in);
		
		try {
			socket = new Socket("localhost",9999); //본인컴퓨터이면 localhost, 다른 컴퓨터이면 그컴퓨터의 ip주소를 입력한다.
			in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			out = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()));
			while (true) {
				System.out.println("보내기 >>");
				String outputMessage = sc.nextLine();
				if (outputMessage.equalsIgnoreCase("bye")) {
					out.write(outputMessage + "\n");
					out.flush();
					break;
				}
				out.write(outputMessage + "\n");
				out.flush();
				String inputMessage = in.readLine();
				System.out.println("서버 : " + inputMessage);
			}
		} catch (IOException e) {System.out.println(e.getMessage());}
		finally {
			try {
				sc.close();
				if (socket != null) socket.close();
			} catch (IOException e) {System.out.println("서버와 채팅 중 오류가 발생했습니다.");}
		}
	}
	
}