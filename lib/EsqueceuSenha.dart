import 'package:flutter/material.dart';
import 'package:primeiro_app/confirma_email.dart';

class EsqueceuSenha extends StatelessWidget {
  const EsqueceuSenha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 141, 188, 211),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Text('RECUPERAR SENHA', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  labelText: 'Informe-nos seu email',
                  hintText: 'Digite seu email aqui',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ConfirmaEmail(),
                        ),
                      );
                    },
                    child: const Text('ENVIAR EMAIL'),
                  ),
                  const SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                      ); // Comando para voltar à tela anterior
                    },
                    child: const Text('VOLTAR'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
