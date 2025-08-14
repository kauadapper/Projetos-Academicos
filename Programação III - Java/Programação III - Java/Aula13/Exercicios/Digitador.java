package Aula13.Exercicios;

public class Digitador extends Funcionario{
    // ATRIBUTO A MAIS
    private int toquesPorMinuto;

    // GETTERS e SETTERS
    public int getToquesPorMinuto(){
        return toquesPorMinuto;
    }

    public void setToquesPorMinuto(int toquesPorMinuto){
        this.toquesPorMinuto = toquesPorMinuto;
    }

    // MÉTODO
    public int getToquesPorHora(){
        return this.toquesPorMinuto*60;
    }
}
