package Aula4;

import java.util.Scanner;

public class Exemplo3 {
    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);

        String[] nomes = {"Ana","Pedro","Felipe","Bruna","Jonas"};

        System.out.println("Mostrando a lista com for normal:");
        for(int i=0;i<nomes.length; i++)
            System.out.print(nomes[i]+" ");

        System.out.println("\n\nMostrando a lista com for simplificado:");
        for(String nome:nomes){
            System.out.print(nome+" ");
        }
    }
}
