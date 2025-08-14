package Aula1;

import java.util.Scanner;

public class Exemplo3 {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        System.out.print("Insira um número inteiro: ");
        int numero = ler.nextInt();
        System.out.println("Número digitado: "+numero);

        System.out.print("Digite a sua altura em metros: ");
        float altura = ler.nextFloat();
        System.out.printf("Sua altura é %.2f\n", altura);
    }
}
