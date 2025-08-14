# Kauã Dapper

cont = 0
menor = 1000
cont_sexo = {"F": 0, "M": 0}

while cont <= 125:
    nome = input("Insira seu nome - ")
    idade = int(input("Insira sua idade - "))
    sexo = input("Insira seu sexo (F/M) - ")
    sexo = sexo.upper()
    while idade < 0:
        idade = int(input("Insira sua idade - "))
    while sexo != "M" and sexo!= "F":
        sexo = input("Insira seu sexo (F/M) - ")
        sexo = sexo.upper()
    if idade < menor:
        menor = idade
        maior_nome = nome
        sexo_maior = sexo
    if (idade >= 60 and sexo == "F") or (idade >= 65 and sexo  == "M"):
        break
    cont += 1
    cont_sexo[sexo.upper()] += 1

sexo_mais_entrevistado = max(cont_sexo, key = cont_sexo.get)

print("%s é a pessoa mais jovem. Abaixo estão seus dados: \nIdade: %d. \nSexo: %s." % (maior_nome, menor, sexo_maior))
print("O sexo mais entrevistado foi:", sexo_mais_entrevistado)