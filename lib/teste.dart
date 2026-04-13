import 'package:flutter/material.dart';

class Teste extends StatelessWidget {
  const Teste({super.key});

  final List<String> lista = const ['a', 'b'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(lista[index]));
        },
      ),
    );
  }
}
