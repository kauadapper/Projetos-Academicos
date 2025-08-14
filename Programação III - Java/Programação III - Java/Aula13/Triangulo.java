package Aula13;

public class Triangulo extends Figura{
    // ATRIBUTOS
    private double b, a;

    public void setB(double b){
        this.b = b;
    }

    public void setA(double a){
        this.a = a;
    }

    @Override
    public double calculaArea() {
        return ((b*a)/2);
    }

    @Override
    public double calculaPerimetro() {
        return b+a+a;
    }
}
