import 'package:flutter/material.dart';

class Confirmacaocancelamento extends StatelessWidget {
  const Confirmacaocancelamento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 228, 240),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.event_busy, color: Colors.red[400], size: 120),
              const SizedBox(height: 30),

              const Text(
                'Reserva Cancelada',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 13, 2, 71),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              const Text(
                'Que pena que você não poderá vir desta vez. O cancelamento foi processado e nenhum valor adicional será cobrado.',
                style: TextStyle(fontSize: 16, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),

              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 13, 2, 71),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 13, 2, 71),
                    width: 2,
                  ), // Borda azul
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text(
                  'VOLTAR AO INÍCIO',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
