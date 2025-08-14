package Aula13;

public class Principal {
    public static void main(String[] args) {
        Quadrado q1 = new Quadrado();
        q1.setL(3);
        System.out.println("Área do quadrado 1: "+q1.calculaArea());
        System.out.println("Perímetro do quadrado 1: "+q1.calculaPerimetro());

        System.out.println();

        Triangulo t1 = new Triangulo();
        t1.setB(5);
        t1.setA(8);
        System.out.println("Área do triângulo: 1 "+t1.calculaArea());
        System.out.println("Perímetro do triângulo 1: "+t1.calculaPerimetro());
    }
}
