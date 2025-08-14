def coloracao_grafo_construcao(grafo):
    n = len(grafo)              # Número de vértices
    cores = [-1] * n            # cor de cada vértice (-1 = sem cor)
    cor_atual = 0               # índice da cor atual

    nao_coloridos = set(range(n))  # Conjunto U de vértices ainda não coloridos

    while nao_coloridos:
        bloqueados = set()     # Conjunto B de vértices adjacentes (bloqueados)
        for v in list(nao_coloridos):
            if v not in bloqueados:
                cores[v] = cor_atual
                nao_coloridos.remove(v)
                bloqueados.update(grafo[v])  # Adiciona todos os vizinhos de v a B
        cor_atual += 1

    return cores


import random

def busca_local(grafo, cores):
    k = max(cores) + 1  # número atual de cores
    while k > 1:
        cor_removida = random.randint(0, k - 1)
        vertices_removidos = [v for v in range(len(cores)) if cores[v] == cor_removida]
        for v in vertices_removidos:
            cores[v] = -1  # Remove a cor

        sucesso = True
        for v in vertices_removidos:
            vizinhos = grafo[v]
            cores_vizinhos = set(cores[u] for u in vizinhos if cores[u] != -1)
            nova_cor = next((c for c in range(k) if c != cor_removida and c not in cores_vizinhos), None)
            if nova_cor is not None:
                cores[v] = nova_cor
            else:
                sucesso = False
                break

        if sucesso:
            k -= 1  # Conseguimos reduzir o número de cores
        else:
            for v in vertices_removidos:
                if cores[v] == -1:
                    cores[v] = cor_removida  # Reverte

    return cores


# Exemplo de grafo como lista de adjacência
grafo = [
    [1, 2],    # Vértice 0 é vizinho de 1 e 2
    [0, 2],    # Vértice 1 é vizinho de 0 e 2
    [0, 1, 3], # Vértice 2 é vizinho de 0, 1 e 3
    [2]        # Vértice 3 é vizinho de 2
]

cores_iniciais = coloracao_grafo_construcao(grafo)
print("Cores iniciais:", cores_iniciais)

cores_otimizadas = busca_local(grafo, cores_iniciais)
print("Cores após busca local:", cores_otimizadas)