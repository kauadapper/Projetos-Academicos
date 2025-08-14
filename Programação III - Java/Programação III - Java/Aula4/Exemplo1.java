package Aula4;

import java.util.Scanner;

public class Exemplo1 {
    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);

        // 2 modos de declaração de vetores
        int[] vetor = new int[5];
        int vetor2[] = new int[5];

        System.out.println("O tamanho do vetor é "+vetor.length);

        // Lendo informações para o vetor, com um loop
        for(int i=0; i<5; i++) {
            System.out.println("Digite um valor para o vetor["+i+"]: ");
            vetor[i] = leitor.nextInt();
        }

        // Mostrando os valores do vetor
        for(int i=0; i<5; i++)
            System.out.print(vetor[i]+" ");
    }
}
