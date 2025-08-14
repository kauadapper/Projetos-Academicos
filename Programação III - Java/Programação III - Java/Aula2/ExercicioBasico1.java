package Aula2;
//Escreva uma classe Java que peça um número e então mostre a mensagem ''O número informado foi [número]''

import java.util.Scanner;

public class ExercicioBasico1 {
    public static void main(String[] args) {
        System.out.print("Insira um número: ");
        Scanner ler_numero = new Scanner(System.in);

        int numero = ler_numero.nextInt();
        System.out.printf("O número inserido foi: %d", numero);
    }
}
