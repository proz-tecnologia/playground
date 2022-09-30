import 'dart:io';

///Função que pede ao usuário para digitar o ano de nascimento e retorna a idade
///baseada no ano de 2022
String tellMyAge() {
  const currentYear = 2022;
  stdout.write("Digite o ano do seu nascimento: ");
  int birthYear = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  return "Você tem ${currentYear - birthYear} anos";
}
