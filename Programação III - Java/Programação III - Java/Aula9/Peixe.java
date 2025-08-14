package Aula9;

public class Peixe extends Animal{
    // ATRIBUTOS
    String caracteristica;


    // CONSTRUTOR
    public Peixe(String nome, int comprimento, float velocidade, String caracteristica){
        super(nome, comprimento, velocidade);
        this.caracteristica = caracteristica;
    }


    // MÉTODOS
    @Override
    public void dados(){
        System.out.printf("""
                DADOS DO ANIMAL
                ---------------
                Nome: %s
                Característica: %s
                Comprimento: %d
                Velocidade: %.1f
                """, this.nome, this.caracteristica, this.comprimento, this.velocidade);
    }
}
