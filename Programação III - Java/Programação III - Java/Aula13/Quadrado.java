package Aula13;

public class Quadrado extends Figura{
    // ATRIBUTOS
    private int l;

    public int getL(){
        return l;
    }

    public void setL(int l){
        this.l = l;
    }

    @Override
    public double calculaArea() {
        return l*l;
    }

    @Override
    public double calculaPerimetro() {
        return l*4;
    }
}
