package Aula4;

import java.util.Scanner;

public class Exemplo2 {
    public static void main(String[] args) {
        int[] vetor1 = {5, 8, 7, 4, 6};
        //int[] vetor2 = vetor1; // Se alterar o vetor 1, alterará no vetor 2. Apontam para o mesmo espaço de memória.
        int[] vetorDois = new int[5];

        System.out.println("Dados no vetor 1:");
        for(int i=0; i<vetor1.length; i++)
            System.out.println(vetor1[i]+" ");

        /*System.out.println("Dados no vetor 2:");
        for(int i=0; i<vetor2.length; i++)
            System.out.println(vetor2[i]+" ");*/

        // Realizando uma cópia manual do vetor 1
        for(int i=0; i<vetor1.length; i++)
            vetorDois[i] = vetor1[i];

        // Realizando uma cópia "automática"
        //System.arraycopy(vetor1, 0, vetorDois, 0, vetor1.length);
    }
}
