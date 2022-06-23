import java.io.*;

public class Triangle extends Plane{

    public Triangle () {
        System.out.println("삼각형을 선택하셨습니다.\n");
    }

    BufferedReader scan = new BufferedReader(new InputStreamReader(System.in));
    BufferedWriter print = new BufferedWriter(new OutputStreamWriter(System.out));

    public void setting () throws IOException {//삼각형의 밑변과 높이 설정

        while (true) {
            try {
                print.write("구하시려는 삼각형의 밑변의 길이를 입력해주세요.(숫자만 입력하셔야 합니다.)\n");
                print.flush();
                setfBase(Double.parseDouble(scan.readLine()));
                if (getfBase() < 0) {
                    print.write("밑변은 음수의 값을 가질수 없습니다. 다시 입력 하셔야 합니다.\n");
                    continue;
                }
                break;
            } catch (Exception e) {
                print.write("밑변을 잘못입력하셨습니다.\n다시 입력해주세요.\n");
            }
        }

        while (true) {
            try {
                print.write("구하시려는 삼각형의 높이를 입력해주세요.(숫자만 입력하셔야 합니다.)\n");
                print.flush();
                setfHeight(Double.parseDouble(scan.readLine()));
                if (getfHeight() < 0) {
                    print.write("높이는 음수의 값을 가질수 없습니다. 다시 입력 하셔야 합니다.\n");
                    continue;
                }
                break;
            } catch (Exception e) {
                print.write("높이를 잘못입력하셨습니다.\n다시 입력해주세요.\n");
            }
        }

    }

    public void getting () throws IOException {//삼각형의 넓이계산 및 출력(소수점 5자리고정)
        double volume = 0.5 * getfBase() * getfHeight();
        print.write("삼각형의 넓이는 " + String.format("%.5f",volume) + " 입니다.\n\n");
        print.flush();
    }

}
