# Kauã Dapper

cont_m = 0
cont = 0
soma_idade_homens = 0
menor = 1000

while cont <= 150:
    olhos = input("Qual a cor de seus olhos? \n(A = azuis/ C = castanhos/ P = pretos) - ")
    olhos = olhos.upper()
    idade = int(input("Informe sua idade - "))
    sexo = input("Insira seu sexo (F/M) - ")
    sexo = sexo.upper()
    print("\n")
    if sexo == "M":
        cont_m += 1
        soma_idade_homens += idade
    if sexo == "F":
        if idade < menor:
            menor = idade
            maior_olhos = olhos
    if (olhos == "A") and (sexo == "M"):
        break
    
    cont += 1

media_idade_homens = soma_idade_homens / cont_m

print("\nA mulher mais jovem entrevistada tem %d anos e seus olhos são %s." % (menor, maior_olhos))
print("A média de idade dos homens entrevistados é de %.1f anos." % media_idade_homens)