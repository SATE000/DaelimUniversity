import java.io.*;
import java.util.StringTokenizer;

public class Square extends Plane{

    public Square () {
        System.out.println("사각형을 선택하셨습니다.\n");
    }

    BufferedReader scan = new BufferedReader(new InputStreamReader(System.in));
    BufferedWriter print = new BufferedWriter(new OutputStreamWriter(System.out));

    public boolean choise () throws IOException { //사각형의 종류 선택후 해당되는 함수실행
        while (true) {
            print.write("사각형은 정사각형, 직사각형, 사다리꼴, 마름모, 평행사변형 총 5개의 유형이 있습니다.\n");
            print.write("원하시는 유형의 사각형을 선택해 주세요\n종료를 원하시면 '종료'혹은 'exit'를 입력해주세요.\n");
            print.flush();
            StringTokenizer st = new StringTokenizer(scan.readLine());
            String sType = st.nextToken();
            switch (sType) {
                case "종료" : case "exit" : case "whdfy" :
                    return false;
                case "정사각형" : case "wjdtkrkrgud" : case "정" :
                    square();
                    break;
                case "직사각형" : case "wlrtkrkrgud" : case "직" :
                    RorPorB("직사각형");
                    break;
                case "평행사변형" : case "vudgodtkqusgud" : case "평" :
                    RorPorB("평행사변형");
                    break;
                case "마름모" : case "akfmaah" : case "마" :
                    RorPorB("마름모");
                    break;
                case "사다리꼴" : case "tkekflRhf" : case "사" :
                    trapezoid();
                    break;
                default:
                    print.write("존재하지 않는 선택지입니다.\n다시 입력해주세요.\n");
                    continue;
            }
            return true;
        }
    }

    public void square () throws IOException{ //정사각형의 넓이 계산
        print.write("정사각형을 선택하셨습니다.\n\n");
        while (true) {
            print.write("한변의 길이를 입력해주세요.(숫자만 입력하셔야 합니다.)\n");
            print.flush();
            try {
                setfBase(Double.parseDouble(scan.readLine()));
                break;
            } catch (Exception e) {
                print.write("잘못 입력하셨습니다.\n다시 입력하세요.\n");
            }
        }
        print.write("정사각형의 넓이는 " + String.format("%.5f",Math.pow(getfBase(),2)) + " 입니다.\n\n");
        print.flush();
    }

    public void RorPorB (String rpb) throws IOException{ //직사각형, 마름모, 평행사변형의 넓이계산
        String sBase = rpb.equals("직사각형")?"가로":rpb.equals("마름모")?"한 대각선":"밑변";
        String sHeight = rpb.equals("직사각형")?"세로":rpb.equals("마름모")?"다른 대각선":"높이";
        print.write(rpb + "을 선택하셨습니다.\n\n");
        while (true) {
            print.write(sBase + "의 길이를 입력해 주세요.(숫자만 입력하셔야 합니다.)\n");
            print.flush();
            try {
                setfBase(Double.parseDouble(scan.readLine()));
                break;
            } catch (Exception e) {
                print.write("잘못 입력하셨습니다.\n다시 입력하세요.\n");
            }
        }
        while (true) {
            print.write(sHeight + "의 길이를 입력해 주세요.(숫자만 입력하셔야 합니다.)\n");
            print.flush();
            try {
                setfHeight(Double.parseDouble(scan.readLine()));
                break;
            } catch (Exception e) {
                print.write("잘못 입력하셨습니다.\n다시 입력하세요.\n");
            }
        }
        double setting = rpb.equals("마름모")?0.5:1;
        print.write(rpb + "의 넓이는 " + String.format("%.5f",getfBase() * getfHeight() * setting) + " 입니다.\n\n");
        print.flush();
    }

    public void trapezoid () throws IOException { //사다리꼴의 넓이계산(소수점 5자리 고정)
        print.write("사다리꼴을 선택하셨습니다.\n\n");
        while (true) {
            print.write("윗변과 밑변의 길이를 한칸 띄우고 입력해주세요.(예시 5.2 6)(숫자만 입력하셔야 합니다.)\n");
            print.flush();
            try {
                StringTokenizer st = new StringTokenizer(scan.readLine());
                setfBase(Double.parseDouble(st.nextToken()) + Double.parseDouble(st.nextToken())); //윗변의길이와 밑변의 길이를 분할하여 입력하게한후, 더하여 변의 길이 설정
                break;
            } catch (Exception e) {
                print.write("잘못 입력하셨습니다.\n다시 입력하세요.\n");
            }
        }
        while (true) {
            print.write("높이를 입력해 주세요.(숫자만 입력하셔야 합니다.)\n");
            print.flush();
            try {
                setfHeight(Double.parseDouble(scan.readLine()));
                break;
            } catch (Exception e) {
                print.write("잘못 입력하셨습니다.\n다시 입력하세요.\n");
            }
        }
        print.write("사다리꼴의 넓이는 " + String.format("%.5f",0.5 * getfBase() * getfHeight()) + " 입니다.\n\n");
        print.flush();
    }

}
