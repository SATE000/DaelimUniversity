import java.io.*;
import java.util.StringTokenizer;

public class Main {

    public static void main(String[] args) throws IOException{
        BufferedReader scan = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter print = new BufferedWriter(new OutputStreamWriter(System.out));

        print.write("도형 계산기 프로그램을 실행합니다.\n\n");

        boolean keep = true;

        while (keep) {
            print.write("구하고 싶은 도형이 평면도형인지 입체도형인지 선택하세요.\n혹은 프로그램을 종료하고싶으시면 '종료' 혹은 'exit' 라고 입력하세요.\n");
            print.flush();
            StringTokenizer st = new StringTokenizer(scan.readLine());
            switch (st.nextToken().toLowerCase()) {
                case "종료" : case "exit" : case "whdfy" :
                    print.write("프로그램을 종료합니다.\n");
                    keep = false;
                    break;
                case "평면" : case "vudaus" : case "평면도형" :
                    PlaneFigure plane = new PlaneFigure();
                    keep = plane.figure();
                    break;
                case "입체" : case "dlqcp" : case "입체도형" :
                    SolidFigure solid = new SolidFigure();
                    keep = solid.figure();
                    break;
                default:
                    print.write("입력하신 선택지는 존재하지 않는 선택지 입니다.\n");
            }
        }
        print.close();
        scan.close();
    }

}