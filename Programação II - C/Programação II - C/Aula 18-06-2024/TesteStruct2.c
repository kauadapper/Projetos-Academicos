#include<stdio.h>
#include<windows.h>
#include<stdlib.h>
/*Faça um programa que armazene em um registro de dados (estrutura composta) os dados de um funcionário de uma empresa, compostos de: 
Nome, Idade, Sexo (M/F), CPF, Data de Nascimento, Código do Setor onde trabalha (0-99), Cargo que ocupa (string de até 30 caracteres) e Salário.
Os dados devem ser digitados pelo usuário, armazenados na estrutura e exibidos na tela.
*/
typedef struct{
  char nome[];
  char cargo[30]
  char sexo;
  char data[10];
  int idade, setor, cpf;
  float salario; 
}Funcionario;

int main(){
  SetConsoleOutputCP(61001);
  system("cls");
  Funcionario f1;

  printf("Informe seu nome - \n");
  scanf("%s", f1.nome);
  setbuf(stdin,NULL);
  
  printf("Informe seu cargo - \n");
  scanf("%s", f1.cargo);
  setbuf(stdin,NULL);

  printf("Informe seu sexo - \n");
  scanf("%c", &f1.sexo);
  setbuf(stdin,NULL);

  printf("Informe sua data de nascimento - \n");
  scanf("%s", f1.data);
  setbuf(stdin,NULL);

  printf("Informe sua idade - \n");
  scanf("%d", &f1.idade);
  setbuf(stdin,NULL);

  printf("Informe seu setor - \n");
  scanf("%d", &f1.setor);
  setbuf(stdin,NULL);

  printf("Informe seu CPF - \n");
  scanf("%d", &f1.cpf);
  setbuf(stdin,NULL);

  printf("Informe seu sexo - \n");
  scanf("%.2f", &f1.salario);
  setbuf(stdin,NULL);


}