# Kauã Dapper

n = int(input("Informe a quantidade de colaboradores - "))

cont = 0
soma = 0
maior = -1
cont_mulheres = 0

while cont < n:
    sexo = input("Informe seu sexo (F/M) - ")
    salario = int(input("Qual o seu salário? - "))
    cont += 1
    if sexo == 'F' or sexo == 'f':
        cont_mulheres += 1
        soma += salario
    if salario > maior:
        maior = salario

media = soma / cont_mulheres
print("A média salarial das funcionárias femininas é de: %.2f." % media)
print("O maior salário entre os colaboradores é de: R$ %d." % maior)