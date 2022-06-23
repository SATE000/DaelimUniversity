import java.io.*;
import java.util.StringTokenizer;

public class SolidFigure {
    BufferedReader scan = new BufferedReader(new InputStreamReader(System.in));
    BufferedWriter print = new BufferedWriter(new OutputStreamWriter(System.out));
    public SolidFigure () {
        System.out.println("입체도형을 선택 하셨습니다.\n");
    }
    public boolean figure () throws IOException{
        print.write("구할수 있는 입체도형에는 구,뿔,기둥 3가지 유형이 있습니다.\n");
        print.write("구하실 도형을 선택하여 주세요.\n종료하고 싶으시면 '종료'혹은 'exit'를 입력해주세요.\n");
        while (true) {
            print.flush();
            StringTokenizer st = new StringTokenizer(scan.readLine());
            switch (st.nextToken()) {
                case "종료" : case "exit" : case "whdfy" :
                    return false;
                case "구" : case "rn" :
                    Sphere s = new Sphere();
                    s.setting();
                    s.getting();
                    break;
                case "뿔" : case "Qnf" :
                    Horn h = new Horn();
                    if (!h.setting()) return false;
                    h.getting();
                    break;
                case "기둥" : case "rlend" :
                    Pillar p = new Pillar();
                    if (!p.setting()) return false;
                    p.getting();
                    break;
                default:
                    print.write("존재하지 않는 선택지 입니다.\n다시 입력하세요.\n");
                    continue;
            }
            return true;
        }
    }
}