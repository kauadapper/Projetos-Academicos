package Aula2;

import java.util.Scanner;

public class Exemplo1 {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);

        System.out.println("Qual seu nome? - ");
        String nome = ler.next();

        System.out.println(nome+" qual sua altura em metros? - ");
        float altura = ler.nextFloat();

        System.out.println(nome+" qual sua idade? - ");
        int idade = ler.nextInt();

        System.out.printf("\n%s tem %d anos de idade e possui %f metros", nome, idade, altura);
    }
}
