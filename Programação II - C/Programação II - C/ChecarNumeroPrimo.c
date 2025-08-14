/******************************************************************************

                            Online C Compiler.
                Code, Compile, Run and Debug C program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

#include <stdio.h>

int main() {
    int num, i;
    printf("Insira um numero: \n");
    scanf("%d", &num);
    
    if(num<=1)
        printf("Nao eh primo, pois eh menor ou igual a 1");
        else{
            for(i=2; i<num; i++){
                if(num%2==0){
                    printf("Nao eh primo, foi encontrado outro divisor");
                    break;
                }
            }
            if(num==i)
                printf("Numero eh primo");
        }
    
    return 0;
}