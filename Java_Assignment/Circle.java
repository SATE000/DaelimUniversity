import java.io.*;

public class Circle extends Plane{

    public Circle () {
        System.out.println("원을 선택하셨습니다.\n");
    }

    BufferedReader scan = new BufferedReader(new InputStreamReader(System.in));
    BufferedWriter print = new BufferedWriter(new OutputStreamWriter(System.out));

    public void setting () throws IOException {//원의 반지름 설정

        while (true) {
            try {
                print.write("구하시려는 원의 반지름을 입력해주세요.(숫자만 입력하셔야 합니다.)\n");
                print.flush();
                setfRadius(Double.parseDouble(scan.readLine()));
                if (getfRadius() < 0) {
                    print.write("반지름은 음수의 값을 가질수 없습니다. 다시 입력 하셔야 합니다.\n");
                    continue;
                }
                break;
            } catch (Exception e) {
                print.write("반지름을 잘못입력하셨습니다.\n다시 입력해주세요.\n");
            }
        }

    }

    public void getting () throws IOException {//원의 넓이 계산 및 출력 (소수점 5자리 고정)
        double volume = Math.pow(getfRadius(),2);
        print.write("원의 넓이는 " + String.format("%.5f",volume) + "PI 입니다.\n\n");
        print.flush();
    }

}
