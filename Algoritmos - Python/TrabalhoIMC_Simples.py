# Kauã Dapper

nome = input("Informe seu nome: ")
peso = float(input("Informe seu peso em quilos: "))
altura = float(input("Informe sua altura em metros: "))

imc = peso / (altura)**2
if imc < 18.5:
    print("%s, seu IMC é de: %.2f. Você está abaixo do peso." % (nome, imc))
elif imc >= 18.5 and imc <= 25:
    print("%s, seu IMC é de: %.2f. Seu peso está normal." % (nome, imc))
elif imc >= 25 and imc <= 30:
    print("%s, seu IMC é de: %.2f. Você está acima do peso." % (nome, imc))
elif imc > 30:
    print("%s, seu IMC é de: %.2f. Você está obeso." % (nome, imc))