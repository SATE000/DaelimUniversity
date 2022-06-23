import java.io.*;

public class FileOutStreamEx {

    public static void main(String[] args) {
        byte b[] = {7, 51, 3, 4, -1, 24};

        try {
            FileOutputStream fout = new FileOutputStream("C:\\Test\\FileOutStreamEx_test.out");
            for (int i = 0; i < b.length; i++)
                fout.write(b[i]);
            fout.close();
        } catch (IOException e) {
            System.out.println("c:\\test\\FileOutStreamEx_test.out을 저장하였습니다.");
        }
    }

}