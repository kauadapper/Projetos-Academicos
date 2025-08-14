package Aula1;

public class Exemplo1 {
    public static void main(String[] args) {
        // Imprimir mensagem na tela
        System.out.println("Imprime a mensagem com quebra de linha");
        System.out.print("Imprime a mensagem sem quebra de linha\n");
        System.out.printf("Imprime a mensagem na tela\n");

        String nome = "Jonas";
        int altura = 180;

        // Imprimindo com printf
        System.out.printf("%s tem altura de %d cm\n", nome, altura);

        // Imprimindo com print ou println e concatenação
        System.out.println(""+nome+" tem altura "+altura+" cm");

    }
}
