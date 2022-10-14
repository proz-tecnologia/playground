# Listy

Aplicativo de linha de comando para gerenciar uma lista de diferentes tipos de dados.

## Desafio
O aplicativo está incompleto e você pode se orientar pelo `[TODO]`disponível no código.

Dicas:
- lembre-se de começar pelo começo
- antes de começar a programar, tente visualizar o fluxo do programa
- entenda o problema antes de implementar a solução
- caso não saiba o que fazer ou fique travado em um problema, descanse alguns minutos e tente novamente
- leia os erros com atenção, se não souber inglês, use o Google Tradutor para ajudar

## Listas em Dart
<details>
<summary>Detalhes</summary>
As listas ou arrays são uma coleção de dados ordenados através de índices.

Cada índice corresponde a uma posição do elemento da lista. Um elemento pode ser de qualquer tipo e uma lista pode ter um tipo definido ou não.

### Exemplos de Listas
```dart

final List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

final List<String> vogais = ["a", "e", "i", "o", "u"];

final List<bool> opcao = [true, false];


final List<dynamic> listaDinamica = [1, "a", true]

```
</details>
</br>

## Mapas em Dart
<details>
<summary>Detalhes</summary>
Os mapas são uma coleção de pares de chave/valor, da qual você recupera um valor usando sua chave associada.

Por padrão, a ordem de um mapa em Dart é definido pela sequência de inserções dos pares chave/valor.

A chave e valor de um mapa pode ser de qualquer tipo, porém uma vez definido o tipo, deve seguir esse padrão ao longo do programa. Um mapa em dart se assemelha a um objeto JSON.

### Exemplos de Mapas
```dart
final Map<int, String> indiceDescricao = {
    1: "primeiro",
    2: "segundo",
    3: "terceiro",
};

final Map<String, String> nomeProfissao = {
    "joão": "desenvolvedor front-end",
    "maria": "desenvolvedor back-end",
    "josé": "desenvolvedor infraestrutura",
}

final Map<String, dynamic> usuarioAdmin = {
    "id": 1,
    "username":"admin",
    "email": "admin@email.com",
    "permissoes":["leitura", "escrita"],
}

```
</details>
</br>

## Referências
- [Collections](https://dart.dev/guides/libraries/library-tour#collections)
- [List](https://api.dart.dev/stable/dart-core/List-class.html)
- [Map](https://api.dart.dev/stable/dart-core/Map-class.html)
- [Codelab Iterables](https://dart.dev/codelabs/iterables)