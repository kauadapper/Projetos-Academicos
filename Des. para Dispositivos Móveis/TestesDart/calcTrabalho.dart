import 'dart:io';

void main(List<String> args) {
  void calcular(double num1, double num2, String operacao) {
    double resultado;
    switch (operacao) {
      case '+':
        resultado = num1 + num2;
        break;
      case '-':
        resultado = num1 - num2;
        break;
      case '*':
        resultado = num1 * num2;
        break;
      case '/':
        if (num2 == 0) {
          throw Exception('Não é possível dividir por zero.');
        }
        resultado = num1 / num2;
        break;
      default:
        throw Exception('Operação inválida.');
    }
    print('$num1 $operacao $num2 = $resultado');
  }

  try {
    stdout.write('Digite o primeiro numero: ');
    var numero1 = double.parse(stdin.readLineSync()!);
    stdout.write('Digite o segundo número: ');
    var numero2 = double.parse(stdin.readLineSync()!);
    stdout.write('Escolha uma operação: ');
    var operacao = stdin.readLineSync()!;
    calcular(numero1, numero2, operacao);
  } catch (e) {
    print('Erro: ${e.toString()}');
  }
}
