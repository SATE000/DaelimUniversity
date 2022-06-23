import java.util.Random;
import java.util.Scanner;

public class RockScissorPaper {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        Random rd = new Random();

        String sRSP1[] = new String[3];
        String sRSP[] = {"가위" ,"바위", "보"};

        System.out.println("이창우(201930228)의 가위바위보게임");

        while (true) {

            System.out.println("\n가위 바위 보 게임입니다. 가위, 바위, 보 중에서 입력하세요.");
            System.out.println("입력 >> ");
            String sUser = sc.next();
            int i  = rd.nextInt(sRSP.length);

            switch (sUser) {
                case "가위" : case "바위" : case "보" : {
                    System.out.println ("나는 " + sUser + ", 컴퓨터는 " +sRSP[i] + "를 냈습니다.");
                    if (sUser.equals(sRSP[i])) {
                        System.out.println("비겼다.");
                    }

                    else if (sUser.equals("가위")) {
                        if (sRSP[i].equals("바위")) System.out.println("졌다.");
                        else System.out.println("이겼다! ^^");
                    }

                    else if (sUser.equals("바위")) {
                        if (sRSP[i].equals("보")) System.out.println("졌다.");
                        else System.out.println("이겼다! ^^");
                    }

                    else if (sUser.equals("보")) {
                        if (sRSP[i].equals("가위")) System.out.println("졌다.");
                        else System.out.println("이겼다! ^^");
                    }

                    continue;
                }
                default:
                    if (sUser.equals("종료")) {
                        System.out.println("게임을 종료합니다...");
                    } else System.out.println("잘못입력하셨습니다.");
            }

            break;
        }

        sc.close();

    }

}