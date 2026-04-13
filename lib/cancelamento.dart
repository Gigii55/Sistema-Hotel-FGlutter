import 'package:flutter/material.dart';
import 'package:primeiro_app/confirmacaoCancelamento.dart';
import 'package:primeiro_app/pagina_inicial.dart';

class Cancelamento extends StatelessWidget {
  const Cancelamento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 141, 188, 211),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 60),
              const Text(
                'DESEJA MESMO ',
                style: TextStyle(
                  color: Color.fromARGB(255, 235, 115, 115),
                  fontSize: 30,
                ),
              ),
              const Text(
                'CANCELAR SUA RESERVA?',
                style: TextStyle(
                  color: Color.fromARGB(255, 235, 115, 115),
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Confirmacaocancelamento(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                child: Text('CANCELAR'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaginaInicial(),
                    ),
                  );
                },
                child: Text('VOLTAR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
