/* Criar uma calculadora básica em Dart que realize operações aritméticas simples (soma, subtração, multiplicação e divisão). O programa deve pedir inputs do usuário via console e exibir os resultados. Para incorporar os conceitos de:  variáveis, listas, controles de fluxo, exceções. */

import 'dart:io';

// Função
void calcular(double num1, double num2, var operacao) {
  double resultado = 0;

  switch (operacao) {
    // Soma
    case '1':
      resultado = num1 + num2;
      stdout.writeln("O resultado da soma foi: $resultado");
      break;

    // Subtração
    case '2':
      resultado = num1 - num2;
      stdout.writeln("O resultado da subtração foi: $resultado");
      break;

    // Multiplicação
    case '3':
      resultado = num1 * num2;
      stdout.writeln("O resultado da multiplicação foi: $resultado");
      break;

    // Divisão
    case '4':
      if (num2 == 0)
        throw Exception("Número 2 não pode ser igual a zero");
      else {
        resultado = num1 / num2;
        stdout.writeln("O resultado da divisão foi: $resultado");
      }
      break;

    // Subtração
    default:
      stdout.writeln("Operação inválida");
      break;
  }
}

// Main
void main(List<String> args) {
  try {
    stdout.writeln("Digite a operação:\n1 - Soma\n2 - Subtração\n3 - Multiplicação\n4 - Divisão");
    var escolha = stdin.readLineSync();
    stdout.write("Digite o primeiro número: ");
    double primeiroNum = double.parse(stdin.readLineSync()!);
    stdout.write("Digite o segundo número: ");
    double segundoNum = double.parse(stdin.readLineSync()!);
    calcular(primeiroNum, segundoNum, escolha);
  } catch (e) {
    stdout.writeln("Erro - $e");
  }
}
