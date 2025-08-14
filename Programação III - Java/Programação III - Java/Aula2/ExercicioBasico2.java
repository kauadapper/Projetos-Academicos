package Aula2;
/*Escreva um programa que leia o nome e o sobrenome de uma pessoa separadamente
e mostre uma mensagem, “Bem vindo Nome Sobrenome”.*/

import java.util.Scanner;

public class ExercicioBasico2 {
    public static void main(String[] args) {
        System.out.println("Insira seu nome e sobrenome!");
        Scanner ler = new Scanner (System.in);

        String nome = ler.next();
        String sobrenome = ler.next();

        System.out.printf("\nBem-vindo %s %s!", nome, sobrenome);
    }
}
