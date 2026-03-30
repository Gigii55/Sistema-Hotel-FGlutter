import 'package:flutter/material.dart';
import 'Login.dart'; // Importa o login para o botão funcionar

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Mesma cor de fundo que você usou na Tela1 e Tela2
      backgroundColor: const Color.fromARGB(255, 141, 188, 211),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'BEM-VINDO',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 3.0,
                  ),
                ),

                const SizedBox(height: 50), // Um espaço maior para os botões

                ElevatedButton(
                  onPressed: () {
                    // Leva para a sua tela de Login (Tela1)
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: const Text('FAZER LOGIN'),
                ),

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {},
                  child: const Text('FAZER CADASTRO'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
