package Aula4;

import java.util.Random;

public class Exemplo4 {
    public static void main(String[] args) {
        Random aleatorio = new Random();

        int num = aleatorio.nextInt(); // Número aleatório
        System.out.println("Primeiro número aleatório gerado: "+num);

        int num2 = aleatorio.nextInt(100); // Número aleatório de 0 até 100
        System.out.println("Segundo número aleatório gerado: "+num2);

        // Valor char aleatório
        int num3 = aleatorio.nextInt(65,90);
        char letra = (char) num3;
        System.out.println("Letra ASCII aleatória gerada: "+letra);

        boolean flag = aleatorio.nextBoolean(); // Valor booleano aleatório
        System.out.println("Valor booleano aleatório gerado: "+flag);
    }
}
