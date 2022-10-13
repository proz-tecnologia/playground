import 'package:flutter/material.dart';
import 'package:formy/src/shared/constants/app_colors.dart';
import 'package:formy/src/shared/widgets/custom_background_container_widget.dart';
import 'package:formy/src/shared/widgets/custom_text_form_field_widget.dart';

//TODO: [FORMY][FIGMA] resultado esperado https://www.figma.com/file/JbPkBsdC7B2L8sptZla9mO/Login-%26-Register-(Community)?node-id=5%3A118

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomBackgroundContainerWidget(text: 'Register'),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 28,
              ),
              width: MediaQuery.of(context).size.width,
              color: AppColors.white,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 69,
                  ),
                  CustomTextFormFieldWidget(
                      fieldText: 'Name', hintText: 'Your Name, e.g : John Doe'),
                  const SizedBox(
                    height: 36,
                  ),
                  CustomTextFormFieldWidget(
                      fieldText: 'Email',
                      hintText: 'Your Email e.g : johndoe@gmail.com'),
                  const SizedBox(
                    height: 36,
                  ),
                  CustomTextFormFieldWidget(
                      fieldText: 'Phone Number',
                      hintText: 'Your phone number e.g : +01 112 xxx xxx'),
                  const SizedBox(
                    height: 36,
                  ),
                  CustomTextFormFieldWidget(
                    fieldText: 'Password',
                    hintText: 'Your password, at least 8 character',
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  CustomTextFormFieldWidget(
                    fieldText: 'Confirm Password',
                    hintText: 'Retype your password',
                    isPassword: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //TODO: [FORMY][TASK] adicionar um widget de layout vertical para receber widgets filhos
      //TODO: [FORMY][TASK] adicionar um widget para receber a parte de cima da tela
      //TODO: [FORMY][FIGMA] https://www.figma.com/file/JbPkBsdC7B2L8sptZla9mO/Login-%26-Register-(Community)?node-id=5%3A119

      //TODO: [FORMY][TASK] adicionar widget que receberá widget(s) para a construção do formulário
      //TODO: [FORMY][FIGMA] https://www.figma.com/file/JbPkBsdC7B2L8sptZla9mO/Login-%26-Register-(Community)?node-id=210%3A2

      //TODO [FORMY][INFO] lembre-se de usar widget com scroll apenas para a parte de baixo da tela, conforme mostra o resultado esperado no figma
    );
  }
}

//TODO: [INFO] após a tela ficar parecida com o que mostra o figma, realize a componentização para reduzir código
//TODO: [INFO] lembre-se de observar as variáveis necessárias para externalizar em seu componente.
