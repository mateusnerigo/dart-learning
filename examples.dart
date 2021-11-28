import 'dart:io';

main() {
  // maiorMenorDeIdade();
  calculaIMC();
}

// Maior ou menor de idade
void maiorMenorDeIdade() {
  print("Digite a idade da pessoa");
  String input = stdin.readLineSync() ?? "";
  int idade = int.parse(input);

  if (idade <= 18) {
    print("Menor de idade");
  } else {
    print("Maior de idade");
  }
}

// Funcão para cálculo de IMC
void calculaIMC() {
  print("Calculando IMC");

  print("\nDigite o peso: ");
  double peso = double.parse(stdin.readLineSync() ?? '');

  print("\n\nDigite a altura: ");
  double altura = double.parse(stdin.readLineSync() ?? '');

  double imc = peso / (altura * altura);

  print("\n\nO índice de massa corporal para esse indivíduo é: " + imc.toStringAsFixed(2));
  print("\n(" + returnMsgIMC(imc) + ")");
}

// retorna a mensagem baseado no imc calculado
String returnMsgIMC(double imc) {
  String msg = "Obesidade grau 3";

  if (imc <= 18.4) {
    msg = "Abaixo do peso";
  } else if (imc >= 18.5 && imc <= 24.9) {
    msg = "Peso ideal";
  } else if (imc >= 25 && imc <= 29.9) {
    msg = "Sobrepeso";
  } else if (imc >= 30 && imc <= 34.9) {
    msg = "Obesidade grau 1";
  } else if (imc >= 35 && imc <= 39.9) {
    msg = "Obesidade grau 2";
  }

  return msg;
}

