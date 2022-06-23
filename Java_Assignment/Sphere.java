import java.io.*;

public class Sphere extends Solid{

    public Sphere () {
        System.out.println("구 도형을 선택하셨습니다.\n");
    }

    BufferedReader scan = new BufferedReader(new InputStreamReader(System.in));
    BufferedWriter print = new BufferedWriter(new OutputStreamWriter(System.out));
    public void setting () throws IOException { //구의 반지름 설정

        while (true) {
            try {
                print.write("구하시려는 구의 반지름을 입력해주세요.(숫자만 입력하셔야 합니다.)\n");
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
        setfBase_Volume(4/3);

    }

    public void getting () throws IOException { //구의 부피계산 및 출력(소수점5자리 고정)
        double volume = getfBase_Volume() *  Math.pow(getfRadius(),3);
        print.write("구의 부피는 " + String.format("%.5f",volume) + "PI 입니다.\n\n");
        print.flush();
    }

}
