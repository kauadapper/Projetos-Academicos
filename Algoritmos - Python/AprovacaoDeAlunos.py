# Kauã Dapper

nome = input("Insira seu nome: ")
nota1 = float(input("Insira o valor da sua nota na prova 1: "))
nota2 = float(input("Insira o valor da sua nota na prova 2: "))
aulas = int(input("Insira o número de aulas que você compareceu: "))

media1 = ((nota1 * 2) + (nota2 * 3)) / 5
media2 = ((nota1 * 3) + (nota2 * 2)) / 5
FREQUENCIA = (aulas / 20) * 100

if nota1 >= nota2:
    if media1 >= 8 and FREQUENCIA >= 75:
        print("%s, Você foi aprovado por média! (%.1f) / Sua frequência foi de %.1f%%" % (nome, media1, FREQUENCIA))
    elif media1 < 8 and media1 >= 3 and FREQUENCIA >= 75:
        print("%s, você está abaixo da média (%.1f), mas você ainda pode fazer o exame final para ser aprovado! / Sua frequência foi de %.1f%%" % (nome, media1, FREQUENCIA))
        exame_final = float(input("Insira o valor da nota do exame final: "))
        nova_media = (media1 + exame_final) / 2
        if exame_final >= 5:
            print("%s, você foi aprovado em exame com nota de %.1f! / Sua frequência foi de %.1f%%." % (nome, exame_final, FREQUENCIA))
        else:
            print("%s, você foi reprovado em exame com nota de %.1f. / Sua frequência foi de %.1f%%." % (nome, exame_final, FREQUENCIA))
    elif FREQUENCIA < 75:
        print("%s, sua média foi de %.1f, mas você foi reprovado principalmente por frequência de (%.1f%%)." % (nome, media1, FREQUENCIA))
    else:
        print("%s, você foi reprovado por média (%.1f). / Sua frequência foi de %.1f%%." % (nome, media1, FREQUENCIA))
        
elif nota2 > nota1:
    if media2 >= 8 and FREQUENCIA >= 75:
        print("%s, Você foi aprovado por média! (%.1f) / Sua frequência foi de %.1f%%." % (nome, media2, FREQUENCIA))
    elif media2 < 8 and media2 >= 3 and FREQUENCIA >= 75:
        print("%s, você está abaixo da média (%.1f), mas você ainda pode fazer o exame final para ser aprovado! / Sua frequência foi de %.1f%%" % (nome, media2, FREQUENCIA))
        exame_final = float(input("Insira o valor da nota do exame final: "))
        nova_media = (media2 + exame_final) / 2
        if exame_final >= 5:
            print("%s, você foi aprovado em exame com nota de %.1f! / Sua frequência foi de %.1f%%." % (nome, exame_final, FREQUENCIA))
        else:
           print("%s, você foi reprovado em exame com nota de %.1f. / Sua frequência foi de %.1f%%." % (nome, exame_final, FREQUENCIA))
    elif FREQUENCIA >= 75:
        print("%s, sua média foi de %.1f, mas você foi reprovado principalmente por frequência de (%.1f%%)." % (nome, media2, FREQUENCIA))
    else:
        print("%s, você foi reprovado por média (%.1f). / Sua frequência foi de %.1f%%." % (nome, media2, FREQUENCIA))