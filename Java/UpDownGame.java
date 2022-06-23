import java.util.Random;
import java.util.Scanner;

public class UpDownGame {

    public static void main(String[] args) {

        System.out.println("업다운 게임을 시작합니다.");

        Scanner sc = new Scanner(System.in);
        Random rd = new Random();

        int a = rd.nextInt(30);

        while (true) {

            System.out.println("30이하의 숫자를 입력하세요:");
            int b = sc.nextInt();

            if (b == a) {
                System.out.println("정답입니다!");
                break;
            }

            else if (b < a) System.out.println("UP");
            else if (a < b) System.out.println("DOWN");

        }

        sc.close();

    }

}