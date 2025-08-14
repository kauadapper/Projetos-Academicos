# Kauã Dapper

nome = input("Informe seu nome: ")
sexo = input("Informe seu sexo (M/F): ")
idade = int(input("Informe sua idade: "))
peso = float(input("Informe seu peso em quilos: "))
altura = float(input("Informe sua altura em metros: "))

peso_ideal_homem = (72.7 * altura) - 58
peso_ideal_mulher = (62.1 * altura) - 44.7

if sexo in ("M", "m") and idade < 65:
    if peso_ideal_homem >= peso:
        diferenca = peso_ideal_homem - peso
        print("%s, você precisa engordar %.1fkg." % (nome, diferenca))
    elif peso_ideal_homem < peso:
        diferenca = peso - peso_ideal_homem
        print("%s, você precisa emagrecer %.1fkg." % (nome, diferenca))
    elif peso_ideal_homem == peso:
        print("%s, você está no seu peso ideal (%.1f)." % (nome, peso_ideal_homem))

elif sexo in ("M", "m") and idade >= 65:
    peso_ideal_homem = (72.7 * altura) - 58
    if peso_ideal_homem >= peso:
        diferenca = peso_ideal_homem - peso
        k = (peso_ideal_homem / diferenca) * 100
        print("%s, cuidado! Você deve procurar um médico, pois está %.1f%% kg abaixo de seu peso ideal" % (nome, k))
    elif peso_ideal_homem < peso:
        diferenca = peso - peso_ideal_homem
        k = (diferenca / peso_ideal_homem) * 100
        print("%s, cuidado! Você deve procurar um médico, pois está %.1f%% kg acima de seu peso ideal" % (nome, k))
    elif peso_ideal_homem == peso:
        print("%s, você está no seu peso ideal (%.1f)." % (nome, peso_ideal_homem))



elif sexo in ("F", "f") and idade < 60:
    if peso_ideal_mulher >= peso:
        diferenca = peso_ideal_mulher - peso
        print("%s, você precisa engordar %.1fkg." % (nome, diferenca))
    elif peso_ideal_mulher < peso:
        diferenca = peso - peso_ideal_mulher
        print("%s, você precisa emagrecer %.1fkg." % (nome, diferenca))
    elif peso_ideal_mulher == peso:
        print("%s, você está no seu peso ideal (%.1f)." % (nome, peso_ideal_mulher))

elif sexo in ("F", "f") and idade >= 60:
    if peso_ideal_mulher >= peso:
        diferenca = peso_ideal_mulher - peso
        k = (peso_ideal_mulher / diferenca) * 100
        print("%s, cuidado! Você deve procurar um médico, pois está %.1f%% kg abaixo de seu peso ideal" % (nome, k))
    elif peso_ideal_mulher < peso:
        diferenca = peso - peso_ideal_mulher
        k = (diferenca / peso_ideal_mulher) * 100
        print("%s, cuidado! Você deve procurar um médico, pois está %.1f%% kg acima de seu peso ideal" % (nome, k))
    elif peso_ideal_mulher == peso:
        print("%s, você está no seu peso ideal (%.1f)." % (nome, peso_ideal_mulher))