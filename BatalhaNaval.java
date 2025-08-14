// Alunos: Kauã Dapper & Renan Chaves

package TED1BatalhaNaval;

import java.util.Scanner;
import java.util.Random;

public class BatalhaNaval {
    // Método para criação de tabuleiro
    public static char[][] criacaoTabuleiro() {
        char[][] tabuleiro = new char[10][10];
        for(int l=0; l<10; l++){
            for(int c=0; c<10; c++){
                tabuleiro[l][c] = '~'; // Inicializa cada posição com uma "onda"
            }
        }
        return tabuleiro;
    }


    // Método para exibir o tabuleiro para o jogador
    public static void mostraTabuleiro(char[][] tabuleiro){
        // Exibir número das colunas
        System.out.print("  "); // Espaço para melhor leitura de posições
        for(int c=0; c<10; c++)
            System.out.printf("%d ", c);
        System.out.println();

        // Mostar conteúdo do tabuleiro
        for(int l=0; l<10; l++){
            System.out.printf("%d ", l); // Exibir número das linhas
            for (int c=0; c<10; c++){ // Exibir o valor presente na posição
                System.out.printf("%c ", tabuleiro[l][c]);
            }
            System.out.println();
        }
    }


    // Método para alocar os navios de forma MANUAL
    public static void alocarNaviosManual(char[][] tabuleiro){
        System.out.println("Digite as coordenadas para alocar os 20 navios:");
        Scanner input = new Scanner(System.in);

        int cont = 0;
        // Loop while para o jogador digitar onde alocar seus navios. 20 é o total de navios
        while(cont<20){
            System.out.println("Digite a linha (0-9):");
            int alocacaoLinha = input.nextInt();
            System.out.println("Digite a coluna (0-9):");
            int alocacaoColuna = input.nextInt();

            // Se digitar um valor não permitido, cai neste if
            if(alocacaoLinha<0 || alocacaoLinha>=10 || alocacaoColuna<0 || alocacaoColuna>=10){
                System.out.println("Coordenadas inválidas. Digite novamente!");
                continue; // Vai seguir para pedir nova coordenada
            }

            // Verificar se a posição já está ocupada
            if(tabuleiro[alocacaoLinha][alocacaoColuna] == 'O')
                System.out.println("Coordenada já preenchida, escolha outra!");
            else{
                tabuleiro[alocacaoLinha][alocacaoColuna] = 'O';
                cont++;
                System.out.printf("\nNavio alocado! Posição: %d-%d\n\n", alocacaoLinha, alocacaoColuna);
            }
        }
        System.out.println("\nTodos os navios foram alocados!");
    }


    // Método para alocar os navios de forma AUTOMÁTICA
    public static void alocarNaviosAuto(char[][] tabuleiro){
        System.out.println("Alocando os navios automaticamente...");
        Random aleatorio = new Random();
        int[] tamanhoNavios = {4, 3, 3, 2, 2, 2, 1, 1, 1, 1}; // Vetor com os tamanhos dos navios

        for(int tamanho: tamanhoNavios){
            boolean alocacao = false; // Variável de controle que indica se o navio foi alocado

            // Tentar alocar até encontrar posição válida
            while(!alocacao){
                int l = aleatorio.nextInt(10); // Linha aleatória
                int c = aleatorio.nextInt(10); // Coluna aleatória
                boolean horVer = aleatorio.nextBoolean(); // Direção aleatória -> horizontal=true | vertical=false

                if(validarPosicao(tabuleiro, l, c, tamanho, horVer)){
                    alocarNavio(tabuleiro, l, c, tamanho, horVer);
                    alocacao = true; // Alocação feita com sucesso
                }
            }
        }
    }


    // Método para validar se o navio cabe no tabuleiro no limite das bordas
    public static boolean validarPosicao(char[][] tabuleiro, int l, int c, int tamanho, boolean horVer){
        if(horVer) {
            if(c + tamanho > 10) return false; // Navio sairia da borda direita, pois o limite é 10
            // Valida se há um espaço livre para o navio
            for(int i = 0; i < tamanho; i++){
                if(tabuleiro[l][c + i] == 'O') return false; // Posição ocupada
            }
        } else {
            if(l + tamanho > 10) return false; // Navio sairia da borda inferior, pois o limite é 10
            // Valida se há um espaço livre para o navio
            for(int i = 0; i < tamanho; i++){
                if(tabuleiro[l + i][c] == 'O') return false; // Posição ocupada
            }
        }
        return true; // Posição válida
    }

    // Método para alocar os navios no tabuleiro
    public static void alocarNavio(char[][] tabuleiro, int l, int c, int tamanho, boolean horVer){
        for(int i = 0; i < tamanho; i++){
            if(horVer)
                tabuleiro[l][c + i] = 'O'; // Aloca na horizontal
            else
                tabuleiro[l + i][c] = 'O'; // Aloca na vertical
        }
    }


    // Método para iniciar o jogo
    public static void iniciarJogo(char[][] tabuleiroJogador, char[][] tabuleiroAdversario, boolean contraPC){
        Scanner input = new Scanner(System.in);
        boolean gameOver = false;

        while(!gameOver){
            System.out.println("Tabuleiro do jogador 1:");
            mostraTabuleiro(tabuleiroJogador);
            System.out.println("\n\nTabuleiro do adversário:");
            mostraTabuleiro(tabuleiroAdversario);

            System.out.println("Jogador 1, digite a linha e coluna para derrubar os navios! (0-9)");
            int l = input.nextInt();
            int c = input.nextInt();

            // Registrar tiro contra o adversário
            if (registroTiro(tabuleiroAdversario, l, c))
                System.out.println("Jogador 1 derrubou um navio!");
            else
                System.out.println("Que azar! Jogador 1 não atingiu nenhum navio!");

            // Verificar se o jogador 1 venceu
            if (verificarVencedor(tabuleiroAdversario)){
                System.out.println("JOGADOR 1 VENCEU A BATALHA NAVAL!");
                gameOver = true;
                break;
            }

            // Turno do adversário (PC ou jogador 2)
            if (contraPC){
                // PC atira de forma aleatória
                Random aleatorio = new Random();
                l = aleatorio.nextInt(10);
                c = aleatorio.nextInt(10);
            }
            else{
                // Se não for o PC, é o jogador 2 o adversário
                System.out.println("Agora é a vez do Jogador 2, digite a linha e coluna para derrubar os navios! (0-9)");
                l = input.nextInt();
                c = input.nextInt();
            }

            // Registro de tiro no tabuleiro contra o jogador 1
            if (registroTiro(tabuleiroJogador, l, c))
                System.out.println("Adversário derrubou um navio!");
            else
                System.out.println("Que azar! Adversário não atingiu nenhum navio!\n");

            // Verificar se o adversário venceu
            if (verificarVencedor(tabuleiroJogador)){
                System.out.println("ADVERSÁRIO VENCEU A BATALHA NAVAL!");
                gameOver = true;
                break;
            }
        }
    }


    // Método para registrar a tentativa
    public static boolean registroTiro(char[][] tabuleiro, int l, int c){
        if(l<0 || l>=10 || c<0 || c>= 10){
            System.out.println("Coordenadas inválidas!");
            return false;
        }

        if(tabuleiro[l][c] == 'O'){
            tabuleiro[l][c] = 'N'; // Marcar como acerto
            return true;
        }
        else if(tabuleiro[l][c] == '~'){
            tabuleiro[l][c] = '*'; // Marcar como erro
            return false;
        }
        else{
            System.out.println("Posição já atingida!");
            return false;
        }
    }

    // Método para verificar se alguém venceu
    public static boolean verificarVencedor(char[][] tabuleiro){
        for(int l=0; l<10; l++){
            for(int c=0; c<10; c++){
                if(tabuleiro[l][c] == 'O')
                    return false; // Se tiver algum navio que ainda não foi atingido
            }
        }
        return true; // Todos navios foram atingidos
    }


    // Método para jogar contra a máquina
    public static void jogarContraPC(){
        // Criação de tabuleiros
        char[][] tabuleiroJogador = criacaoTabuleiro();
        char[][] tabuleiroPC = criacaoTabuleiro();

        // Alocar os navios
        Scanner input = new Scanner(System.in);
        System.out.println("Deseja alocar os navios manualmente? (S/N)");
        char resposta = input.next().charAt(0);
        resposta = Character.toUpperCase(resposta);
        if(resposta == 'S')
            alocarNaviosManual(tabuleiroJogador);
        else
            alocarNaviosAuto(tabuleiroJogador);

        // Alocação da máquina será automática
        alocarNaviosAuto(tabuleiroPC);

        // Iniciar jogo
        iniciarJogo(tabuleiroJogador, tabuleiroPC, true); // true indica que o adversário é a máquina
    }


    // Método para jogar contra outro jogador
    public static void jogarContraJogador(){
        char[][] tabuleiroJogador1 = criacaoTabuleiro();
        char[][] tabuleiroJogador2 = criacaoTabuleiro();

        // Alocar os navios do jogador 1
        Scanner input = new Scanner(System.in);
        System.out.println("Jogador 1, deseja alocar os navios manualmente? (S/N)");
        char resposta1 = input.next().charAt(0);
        resposta1 = Character.toUpperCase(resposta1);
        if(resposta1 == 'S')
            alocarNaviosManual(tabuleiroJogador1);
        else
            alocarNaviosAuto(tabuleiroJogador1);

        // Alocar os navios do jogador 2
        System.out.println("Jogador 2, deseja alocar os navios manualmente? (S/N)");
        char resposta2 = input.next().charAt(0);
        resposta2 = Character.toUpperCase(resposta2);
        if(resposta2 == 'S')
            alocarNaviosManual(tabuleiroJogador2);
        else
            alocarNaviosAuto(tabuleiroJogador2);

        // Iniciar jogo
        iniciarJogo(tabuleiroJogador1, tabuleiroJogador2, false); // false indica que o adversário é outro jogador
    }


    // Método de controle
    public static int[] entradaUsuario(){
        Scanner input = new Scanner(System.in);
        int[] coordenadas = new int[2];
        boolean entradaValida = false;

        while(!entradaValida){
            System.out.println("Digite a linha (0-9):");
            coordenadas[0] = input.nextInt();
            System.out.println("Digite a coluna (0-9):");
            coordenadas[1] = input.nextInt();

            // Validar se as coordenadas estão dentro dos limites do tabuleiro
            if (coordenadas[0] >= 0 && coordenadas[0] < 10 && coordenadas[1] >= 0 && coordenadas[1] < 10)
                entradaValida = true;

            else
                System.out.println("Coordenadas inválidas! Tente novamente.");

        }
        return coordenadas;
    }


    // Método para alternância de rodadas
    public static void alternarRodada(char[][] tabuleiroJogador1, char[][] tabuleiroAdversario, boolean contraPC) {
        boolean jogoContinua = true; // O jogo continua até alguém vencer
        boolean vezJogador1 = true; // Jogador 1 começa

        while (jogoContinua) {
            if (vezJogador1) {
                System.out.println("Vez do jogador 1");
                int[] coordenadas = entradaUsuario(); // Jogador 1 atira
                boolean acerto = registroTiro(tabuleiroAdversario, coordenadas[0], coordenadas[1]);
                if (acerto) {
                    System.out.println("Jogador 1 derrubou um navio!");
                } else {
                    System.out.println("Jogador 1 errou o tiro!");
                }

                // Valida se o jogador 1 venceu
                if (verificarVencedor(tabuleiroAdversario)) {
                    System.out.println("Jogador 1 venceu!");
                    jogoContinua = false;
                }
            }

            else{
                if (contraPC){
                    System.out.println("Vez da máquina");
                    Random aleatorio = new Random();
                    int l = aleatorio.nextInt(10);
                    int c = aleatorio.nextInt(10);

                    boolean acerto = registroTiro(tabuleiroJogador1, l, c);
                    if (acerto)
                        System.out.println("Máquina derrubou um navio!");
                    else
                        System.out.println("Máquina errou o tiro!");

                    // Valida se a máquina venceu
                    if (verificarVencedor(tabuleiroJogador1)){
                        System.out.println("Máquina venceu!");
                        jogoContinua = false;
                    }
                }

                else {
                    System.out.println("Vez do Jogador 2");
                    int[] coordenadas = entradaUsuario(); // Jogador 2 atira
                    boolean acerto = registroTiro(tabuleiroJogador1, coordenadas[0], coordenadas[1]);

                    if (acerto)
                        System.out.println("Jogador 2 derrubou um navio!");
                    else
                        System.out.println("Jogador 2 errou o tiro!");

                    // Valida se o Jogador 2 venceu
                    if (verificarVencedor(tabuleiroJogador1)){
                        System.out.println("Jogador 2 venceu!");
                        jogoContinua = false;
                    }
                }
            }

            // Alterna a vez entre Jogador 1 e Jogador 2/PC
            vezJogador1 = !vezJogador1;
        }
    }

    // Método principal para iniciar o jogo
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Bem-vindo à Batalha Naval!");
        System.out.println("Escolha uma opção:");
        System.out.println("1 - Jogar contra o PC");
        System.out.println("2 - Jogar contra outro jogador");

        int opcao = input.nextInt();

        // Executar com base na escolha do jogador
        switch (opcao) {
            case 1:
                jogarContraPC();  // Chama o método para jogar contra o PC
                break;
            case 2:
                jogarContraJogador();  // Chama o método para jogar contra outro jogador
                break;
            default:
                System.out.println("Opção inválida! Por favor, selecione 1 ou 2.");
                break;
        }
    }
}