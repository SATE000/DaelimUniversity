import java.io.*;
import java.util.StringTokenizer;

public class Pillar extends Solid{

    public Pillar () { System.out.println("기둥 도형을 선택하셨습니다.\n"); }

    BufferedReader scan = new BufferedReader(new InputStreamReader(System.in));
    BufferedWriter print = new BufferedWriter(new OutputStreamWriter(System.out));
    String is;

    public boolean setting () throws IOException { //기둥의 밑면넓이와 높이 설정

        while (true) {
            try {
                print.write("구하시려는 기둥에서 밑면의 넓이를 입력해주세요.(숫자만 입력하셔야 합니다.)\n");
                print.write("만약 밑면이 원형태라면 숫자와 'PI'를 한칸 띄우고 입력해주세요.(예시 5.2 PI)\n");
                print.write("밑면의 넓이를 모르셔서 구하자고 하시면 '밑면' 혹은 'foot' 을 입력해주세요.\n");
                print.flush();
                StringTokenizer st = new StringTokenizer(scan.readLine());
                String sVolume = st.nextToken();
                if (sVolume.equals("밑면") || sVolume.equals("foot")){
                    PlaneFigure p = new PlaneFigure("밑면");
                    if (!p.figure()) return false;
                    continue;
                } else if (Double.parseDouble(sVolume) < 0) {
                    print.write("밑면의 넓이는 음수가 될수 없습니다.\n다시 입력하셔야 합니다.\n");
                    continue;
                }
                try { is = st.nextToken().equals("PI")?"PI 입니다.\n":" 입니다.\n"; }
                catch (Exception e) {is = " 입니다.\n";}
                setfFoot_Width(Double.parseDouble(sVolume));
                break;
            } catch (Exception e) {
                print.write("잘못입력하셨습니다.\n다시 입력해주세요.\n");
                continue;
            }
        }

        while (true) {
            try {
                print.write("기둥의 높이를 입력해주세요.\n");
                print.flush();
                setfHeight(Double.parseDouble(scan.readLine()));
                if (getfHeight() < 0) {
                    print.write("기둥의 넓이는 음수의 값을 가질수 없습니다.\n다시 입력하셔야 합니다.\n");
                }
                break;
            } catch (Exception e) {
                print.write("잘못 입력하셨습니다.\n다시 입력해주세요.\n");
            }
        }
        setfBase_Volume(1);
        return true;

    }

    public void getting () throws IOException { //기둥의 부피 계산 및 출력(소수점 5자리 고정)
        double volume = getfBase_Volume() * getfFoot_Width() * getfHeight();
        print.write("기둥의 부피는 " + String.format("%.5f",volume) + is);
        print.flush();
    }

}