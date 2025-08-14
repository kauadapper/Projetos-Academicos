package Aula9;

public class Animal {
    // ATRIBUTOS
    String nome, cor, ambiente;
    int comprimento, patas;
    float velocidade;


    // MÉTODOS
    public void alteraNome(String nome) {
        this.nome = nome;
    }

    public void alteraCor(String cor) {
        this.cor = cor;
    }

    public void alteraAmbiente(String ambiente) {
        this.ambiente = ambiente;
    }

    public void alteraComprimento(int comprimento) {
        this.comprimento = comprimento;
    }

    public void alteraPatas(int patas) {
        this.patas = patas;
    }

    public void alteraVelocidade(float velocidade) {
        this.velocidade = velocidade;
    }

    public void dados(){
        System.out.printf("""
                DADOS DO ANIMAL
                ---------------
                Nome: %s
                Cor: %s
                Ambiente: %s
                Comprimento: %d
                Patas: %d
                Velocidade: %.1f
                """, this.nome, this.cor, this.ambiente, this.comprimento, this.patas, this.velocidade);
    }


    // CONSTRUTOR
    public Animal(String nome, String cor, String ambiente, int comprimento, int patas, float velocidade){
        this.nome = nome;
        this.cor = cor;
        this.ambiente = ambiente;
        this.comprimento = comprimento;
        this.patas = patas;
        this.velocidade = velocidade;
    }
}
