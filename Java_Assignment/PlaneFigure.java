import java.io.*;
import java.util.StringTokenizer;

public class PlaneFigure {
    BufferedReader scan = new BufferedReader(new InputStreamReader(System.in));
    BufferedWriter print = new BufferedWriter(new OutputStreamWriter(System.out));
    String fType = "평면도형";
    public PlaneFigure () {
        System.out.println("평면 도형을 선택하셨습니다.\n");
    }
    public PlaneFigure (String fType) {
        this.fType = fType;
        System.out.println("밑면의 넓이를 구합니다.\n");
    }
    public boolean figure () throws IOException{
        print.write("구할수 있는 " + fType + "에는 원, 삼각형, 사각형 3가지 유형이 있습니다.\n");
        print.write("구하실 도형을 선택하여 주세요.\n종료하고 싶으시면 '종료' 혹은 'exit'를 입력해주세요.\n");
        while (true) {
            print.flush();
            StringTokenizer st = new StringTokenizer(scan.readLine());
            switch (st.nextToken().toLowerCase()) {
                case "종료" : case "exit" : case "whdfy" :
                    return false;
                case "원" : case "dnjs" :
                    Circle c = new Circle();
                    c.setting();
                    c.getting();
                    break;
                case "삼각형" : case "tkarkrgud" : case "삼" :
                    Triangle t = new Triangle();
                    t.setting();
                    t.getting();
                    break;
                case "사각형" : case "tkrkrgud" : case "사" :
                    Square s = new Square();
                    if (!s.choise()) return false;
                    break;
                default:
                    print.write("존재하지 않는 선택지 입니다.\n다시 입력하세요.\n");
                    continue;
            }
            return true;
        }
    }
}