///Função responsável por imprimir o menu principal do programa
void menu() {
  //TODO: crie uma variável final do tipo List de Map cuja chave receba String e o valor receba dynamic

  //TODO: crie uma estrutura de repetição while que receba por parametro o valor true

  //TODO: dentro do escopo while, imprima o menu principal com as opções
  //de listar, adicionar, remover usuarios e uma opção para encerrar o programa

  //TODO: após o passo anterior, crie uma variável que receba o input do usuário pelo terminal

  //TODO: faça uma verificação condicional para encerrar o loop while
  //em caso do usuário escolher essa opção no menu

  //TODO: após o passo anterior, adicione a estrutura switch case para realizar ações
  //para cada caso do menu principal, exceto o já realizado no passo anterior
}

///Função responsável por realizar a listagem de usuários
void list(List<Map<String, dynamic>> list) {
  //TODO: imprimir na tela uma mensagem se a lista do parâmetro de entrada for vazia
  //TODO: imprimir cada usuario cadastrado se a lista não for vazia
}

///Função que adiciona um novo usuário à lista
void add(List<Map<String, dynamic>> list) {
  //TODO: peça o nome do usuário que deseja cadastrar e guarde em uma variável

  //TODO: peça o email do usuário que deseja cadastrar e guarde em outra variável

  //TODO: após o passo anterior, utilize o método nativo para adicionar um novo mapa na lista de usuários
  //não esqueça de informar a chave e o valor correspondente
}

///Função que remove um usuário da lista com base no email desse usuário
void remove(List<Map<String, dynamic>> list) {
  //TODO: imprima uma mensagem na tela se a lista estiver vazia

  //TODO: se a lista não estiver vazia, realize o processo para remover o usuário da lista
  //com base no email cadastrado

  //TODO: dentro do processo de remover usuário da lista, verifique se o usuário existe no sistema.
  //Se sim, remova-o da lista. Se não, imprima uma mensagem de que o usuário
  //não foi encontrado
}
