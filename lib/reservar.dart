import 'package:flutter/material.dart';
import 'package:primeiro_app/confirma_email.dart';
import 'package:primeiro_app/confirmaReserva.dart';

class Reservar extends StatelessWidget {
  const Reservar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 228, 240), // Fundo padrão

      appBar: AppBar(
        title: const Text('Fazer Reserva'),
        backgroundColor: const Color.fromARGB(255, 13, 2, 71),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Preencha seus dados',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 13, 2, 71),
                ),
              ),
              const SizedBox(height: 20),

              // --- 1. CAMPO NOME ---
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nome Completo',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // --- 2. DATAS DE ENTRADA E SAÍDA (Lado a Lado) ---
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Check-in',
                        hintText: 'DD/MM/AAAA',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      // Abre o teclado numérico com símbolos de data!
                      keyboardType: TextInputType.datetime,
                    ),
                  ),
                  const SizedBox(width: 15), // Espaço entre os campos
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Check-out',
                        hintText: 'DD/MM/AAAA',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      keyboardType: TextInputType.datetime,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),

              // --- 3. CAMPO HÓSPEDES ---
              TextField(
                decoration: InputDecoration(
                  labelText: 'Quantidade de Hóspedes',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                // Abre o teclado só com números!
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 30),

              // --- 4. RESUMO DA COMPRA ---
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 98, 121, 139),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Resumo da Reserva',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Quarto selecionado: Luxo',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Valor por noite: R\$ 350,00',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      'Taxa limpeza: R\$ 150,00',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Divider(
                      color: Colors.white54,
                      height: 30,
                      thickness: 1,
                    ), // Uma linha divisória elegante
                    Text(
                      'Total estimado: R\$ 500,00',
                      style: TextStyle(
                        color: Color.fromARGB(255, 15, 1, 128),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              // --- 5. BOTÃO DE CONFIRMAR ---
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors
                      .green[600], // Verde para passar a sensação de "Sucesso / Vai fundo!"
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Confirmareserva(),
                    ),
                  );
                },
                child: const Text(
                  'CONFIRMAR RESERVA',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
