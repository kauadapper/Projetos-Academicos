// Faça um programa que receba o número de um mês e mostre na tela o nome do mês correspondente.
// Também informa se já passou da metade do ano, ou não.

#include<stdio.h>
#include<windows.h>

int main(){
    SetConsoleOutputCP(65001);
    printf("Informe o mês\n");
    int mes;
    scanf("%d", &mes);
    switch(mes){
        case 1:
            printf("Janeiro");
            break;
        case 2:
            printf("Fevereiro");
            break;
        case 3:
            printf("Março");
            break;
        case 4:
            printf("Abril");
            break;
        case 5:
            printf("Maio");
            break;
        case 6:
            printf("Junho");
            break;
        case 7:
            printf("Julho");
            break;
        case 8:
            printf("Agosto");
            break;
        case 9:
            printf("Setembro");
            break;
        case 10:
            printf("Outubro");
            break;
        case 11:
            printf("Novembro");
            break;
        case 12:
            printf("Dezembro");
            break;
        default:
            printf("Número inválido");
    }

    if (mes > 6)
        printf("\nJá passou da metade do ano");
    else
        printf("\nNão passou da metade do ano");

}