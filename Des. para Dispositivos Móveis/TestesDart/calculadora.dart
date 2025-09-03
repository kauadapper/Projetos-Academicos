/* Criar uma calculadora básica em Dart que realize operações aritméticas simples (soma, subtração, multiplicação e divisão). O programa deve pedir inputs do usuário via console e exibir os resultados. Para incorporar os conceitos de:  variáveis, listas, controles de fluxo, exceções. */

import 'dart:io';

void main(List<String> args){
  print("Digite a operação:\n1 - Soma\n2 - Subtração\n3 - Multiplicação\n4 - Divisão");
  var operacao = stdin.readLineSync();

  switch(operacao){
    case '1':
      print("Você escolheu soma!");
      stdout.write("Digite o primeiro número: ");
      double num1 = double.parse(stdin.readLineSync()!);
      stdout.write("Digite o segundo número: ");
      double num2 = double.parse(stdin.readLineSync()!);
      double resultado = num1 + num2;
      print("O resultado da soma é: $resultado");
    
    case '2':
      print("Você escolheu subtração!");
      stdout.write("Digite o primeiro número: ");
      double num1 = double.parse(stdin.readLineSync()!);
      stdout.write("Digite o segundo número: ");
      double num2 = double.parse(stdin.readLineSync()!);
      double resultado = num1 - num2;
      print("O resultado da subtração é: $resultado");

    case '3':
      print("Você escolheu multiplicação!");
      stdout.write("Digite o primeiro número: ");
      double num1 = double.parse(stdin.readLineSync()!);
      stdout.write("Digite o segundo número: ");
      double num2 = double.parse(stdin.readLineSync()!);
      double resultado = num1 * num2;
      print("O resultado da multiplicação é: $resultado");

    case '4':
      print("Você escolheu divisão!");
      stdout.write("Digite o primeiro número: ");
      double num1 = double.parse(stdin.readLineSync()!);
      stdout.write("Digite o segundo número: ");
      double num2 = double.parse(stdin.readLineSync()!);
      if(num2==0)
        throw Exception("Não é possível dividir por zero.");
      double resultado = num1 / num2;
      print("O resultado da divisão é: $resultado");

      default:
        throw Exception("Operação inválida.");
  }
}