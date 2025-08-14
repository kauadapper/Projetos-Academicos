package Aula3;

import java.util.Scanner;
public class ExercicioSelRep15 {
    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);

        System.out.println("Insira 2 números inteiros.");
        int n1 = leitor.nextInt();
        int n2 = leitor.nextInt();

        int soma = 0;

        while(n1 <= n2){
            soma += n1;
            n1 += 1;
        }

        System.out.printf("Resultado = %d", soma);
    }
}