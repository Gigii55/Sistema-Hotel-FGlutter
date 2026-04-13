import 'package:flutter/material.dart';
import 'package:primeiro_app/cancelamento.dart';
import 'package:primeiro_app/home.dart';
import 'package:primeiro_app/telaQuartos.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 141, 188, 211),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Text(
                'BEM VINDO (A)!',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              const SizedBox(height: 40),
              Text(
                'RESERVAS ATIVAS:',
                style: TextStyle(
                  color: const Color.fromARGB(255, 17, 17, 83),
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: 380,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 53, 85, 99),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      'DADOS RESERVA',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Data: 19/07/2026',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Tipo: QUARTO DUPLO',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Quantidade camas: 2 camas',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Check-in: 14:00h',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Check-out: 11:00h',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cancelamento(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                      ),
                      child: Text('CANCELAR RESERVA'),
                    ),

                    const SizedBox(height: 10),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.all(20),
                width: 380,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 53, 85, 99),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      'DADOS RESERVA',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Data: 10/04/2027',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Tipo: QUARTO QUADRUPLO',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Quantidade camas: 4 camas',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Check-in: 14:00h',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Check-out: 11:00h',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cancelamento(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                      ),

                      child: Text('CANCELAR RESERVA'),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Telaquartos(),
                          ),
                        );
                      },
                      child: Text('VOLTAR HOME'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
