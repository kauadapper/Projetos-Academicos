# Kauã Dapper

# Escrever um programa em Python que informe o percentual de alunos aprovados
# e reprovados em uma determinada disciplina no final do semestre.
# Para cada aluno deve ser informada a sua média final (valor entre 0,0 e 10,0)
# obtida no semestre. A média de aprovação na disciplina é 8,0.
# A entrada de dados dos alunos deve ser controlada através da pergunta “Novo
# aluno (S/N)?”.
# Para esse programa deve ser realizada a consistência dos dados de entrada.

cont_reprovado = 0
cont_aprovado = 0

while True:
    disciplina = input("Informe a disciplina correspondente - ")
    media = float(input("Insira a média final do aluno - "))
    while media < 0:
        media = float(input("Insira corretamente a média final do aluno - "))
    if media < 8 and media >= 0:
        print("Reprovado em %s, média %.1f." % (disciplina, media))
        cont_reprovado += 1
    elif media >= 8:
        print("Aprovado em %s, média %.1f." % (disciplina, media))
        cont_aprovado += 1
    continuar = input("Novo Aluno? (S/N) - ")
    if continuar.upper() == "N":
        print("Cálculo encerrado! \n")
        break

total_alunos = cont_reprovado + cont_aprovado
percentual_reprovados = (cont_reprovado / total_alunos) * 100
percentual_aprovados = (cont_aprovado / total_alunos) * 100

print ("%.1f%% dos alunos foram reprovados. \n%.1f%% dos alunos foram aprovados." % (percentual_reprovados, percentual_aprovados))