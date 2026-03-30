import 'package:flutter/material.dart';
import 'EsqueceuSenha.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 141, 188, 211),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('LOGIN', style: TextStyle(fontSize: 30)),
                const SizedBox(
                  height: 20,
                ), // Isso aqui serve para dar um espaço entre o texto e o campo
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Nome Completo',
                    hintText: 'Digite seu nome aqui',
                    border:
                        OutlineInputBorder(), // Cria aquela bordinha ao ao redor do campo
                    prefixIcon: Icon(
                      Icons.person,
                    ), // Coloca um ícone de bonequinho no início
                  ),
                ),
                const SizedBox(height: 20),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Senha',
                    hintText: 'Digite sua senha aqui',
                    border:
                        OutlineInputBorder(), // Cria aquela bordinha ao ao redor do campo
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EsqueceuSenha(),
                      ),
                    );
                  },
                  child: const Text('Esqueceu a senha?'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('ENTRAR'),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('VOLTAR PARA HOME'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
