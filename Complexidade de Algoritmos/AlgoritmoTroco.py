# Dicionário com as configurações de entrada
def configuracao(num):
    opcoes = {
        1: [100, 50, 25, 10, 5, 2, 1],
        2: [100, 50, 20, 10, 5, 1],
        3: [100, 50, 20, 10, 5, 2, 1],
        4: [100, 50, 24, 12, 5, 1]
    }
    return opcoes.get(num, [])

# Realização do cálculo com conversão para números inteiros para evitar ponto flutuante
def calculoTroco(numConfiguracao, trocoReais):
    moedas = configuracao(numConfiguracao)
    if not moedas:
        return "Configuração inválida."

    trocoCentavos = int(round(trocoReais * 100))
    resultado = {}
    totalMoedas = 0

    for moeda in moedas:
        quantidade = trocoCentavos // moeda
        if quantidade > 0:
            resultado[moeda] = quantidade
            trocoCentavos -= quantidade * moeda
            totalMoedas += quantidade

    # Saída
    resposta = []
    for valor, qtd in sorted(resultado.items(), reverse=True):
        resposta.append(f"{qtd} moeda(s) de {valor} centavos")
    
    resposta.append(f"Total de moedas: {totalMoedas}")
    return "\n".join(resposta)


# Uso
config = int(input("Insira a configuração de entrada - "))
troco = float(input("Insira o troco - "))
print("Confira abaixo o resultado da operação:")
print(calculoTroco(config, troco))