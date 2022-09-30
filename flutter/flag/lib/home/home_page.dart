import 'package:flutter/material.dart';

import 'widgets/france_flag.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: const Center(
          //TODO: escolha uma bandeira e tente recriá-la usando apenas o Container e suas propriedades
          //
          //TODO: use os widgets criados como referencia para fazer as suas próprias
          //
          //TODO: após criar sua bandeira, chame a classe no parâmetro child abaixo
          child: FranceFlagWidget(),
        ));
  }
}
