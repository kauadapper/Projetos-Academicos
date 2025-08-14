#include<stdio.h>
#include<stdlib.h>
#include<windows.h>

struct aluno{
  char nome[50];
  int matricula, faltas;
  float notas[3];
  char status;
};

int main(){
  SetConsoleOutputCP(65001);
  system("cls");

  struct aluno aluno1;
  printf("\nInforme seu nome - ");
  scanf("%s", aluno1.nome);
  setbuf(stdin,NULL);

  printf("\nInforme seu código de matrícula - ");
  scanf("%d", &aluno1.matricula);
  setbuf(stdin,NULL);

  printf("\nFaltas - ");
  scanf("%d", &aluno1.faltas);
  setbuf(stdin,NULL);

  printf("\nInforme suas notas - ");
  for(int i=0;i<3;i++){
    scanf("%f", &aluno1.notas[i]);
    setbuf(stdin,NULL);
  }
    
  printf("Informe se foi reprovado ou aprovado - ");
  scanf("%c", &aluno1.status);
  setbuf(stdin,NULL);

  printf("\nNome - %s", aluno1.nome);
  printf("\nMatrícula - %d", aluno1.matricula);
  printf("\nFaltas - %d", aluno1.faltas);
  for(int i=0;i<3;i++)
    printf("\nNotas - %.1f", aluno1.notas[i]);
  printf("\nStatus - %c", aluno1.status);

  return 0;

}