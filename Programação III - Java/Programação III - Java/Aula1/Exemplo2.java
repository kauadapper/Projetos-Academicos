package Aula1;

public class Exemplo2 {
    public static void main(String[] args) {
        int n = 10;
        System.out.printf("O valor de N é %d\n", n++);
        System.out.printf("Agora o valor de N é %d\n", n);

        float altura = (float) 1.8;
        System.out.println("O valor da altura é "+altura);
        System.out.printf("O valor da altura é %.2f\n", altura); // Formata o teste de acordo com o idioma do SO
    }
}
