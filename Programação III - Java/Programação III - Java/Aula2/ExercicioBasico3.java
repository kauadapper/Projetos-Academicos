package Aula2;

import java.util.Scanner;

public class ExercicioBasico3 {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        System.out.println("Insira suas 4 notas para calcular a média!");

        float n1 = ler.nextFloat();
        float n2 = ler.nextFloat();
        float n3 = ler.nextFloat();
        float n4 = ler.nextFloat();

        float media = (n1 + n2 + n3 + n4) / 4;

        System.out.printf("\nSua média é %.2f", media);
    }
}
