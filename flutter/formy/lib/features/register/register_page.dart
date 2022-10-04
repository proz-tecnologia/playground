import 'package:flutter/material.dart';

//TODO: [FORMY][FIGMA] resultado esperado https://www.figma.com/file/JbPkBsdC7B2L8sptZla9mO/Login-%26-Register-(Community)?node-id=5%3A118
//TODO: [FORMY][TASK] criar classes separadas para cores e estilos
//TODO: [FORMY][INFO] as fonts já foram adicionadas na pasta assets/fonts, basta usá-las como propriedades do seu estilo de texto
//TODO: [FORMY][DOC] referência para uso de fontes: https://docs.flutter.dev/cookbook/design/fonts#4-use-the-font-in-a-specific-widget

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: [FORMY][TASK] adicionar um widget de layout vertical para receber widgets filhos
      body: Column(
        children: const [
          //TODO: [FORMY][TASK] adicionar um widget para receber a parte de cima da tela
          //TODO: [FORMY][FIGMA] https://www.figma.com/file/JbPkBsdC7B2L8sptZla9mO/Login-%26-Register-(Community)?node-id=5%3A119

          //TODO: [FORMY][TASK] adicionar widget que receberá widget(s) para a construção do formulário
          //TODO: [FORMY][FIGMA] https://www.figma.com/file/JbPkBsdC7B2L8sptZla9mO/Login-%26-Register-(Community)?node-id=210%3A2

          //TODO [FORMY][INFO] lembre-se de usar widget com scroll apenas para a parte de baixo da tela, conforme mostra o resultado esperado no figma
        ],
      ),
    );
  }
}

//TODO: [INFO] após a tela ficar parecida com o que mostra o figma, realize a componentização para reduzir código
//TODO: [INFO] lembre-se de observar as variáveis necessárias para externalizar em seu componente.
