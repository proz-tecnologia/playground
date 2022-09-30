import 'dart:io';

///Função void (sem retorno). Deve executar tudo que estiver dentro dela.
void sayMyName() {
  stdout.write("Digite o seu nome: ");
  final name = stdin.readLineSync()!;
  stdout.writeln("Seu nome é: Heisenberg!");
  stdout.write("Na verdade seu nome é: $name");
}

///Função com retorno do tipo String. Ao final, deve retornar um valor do mesmo tipo declarado.
///
/// Exemplos de função com retorno de outros tipos:
///
/// `int soma() => 2+2;`
///
/// `double divisao() => 5 / 2;`
///
/// `bool oCeuEhAzul() => true;`

String sayMyNameWithReturn() {
  stdout.write("Digite o seu nome: ");
  final name = stdin.readLineSync()!;
  stdout.writeln("Seu nome é: Heisenberg!");
  return "Na verdade seu nome é: $name";
}
