package Aula3;

import java.util.Scanner;
public class ExercicioSelRep4 {
    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);

        System.out.println("Insira um número para checar se é par ou ímpar.");
        int num = leitor.nextInt();

        if(num%2==0)
            System.out.printf("O número %d é par!", num);
        else
            System.out.println("O número é ímpar!");
    }
}
