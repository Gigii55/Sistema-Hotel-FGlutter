import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:primeiro_app/Login.dart';

class ConfirmaEmail extends StatelessWidget {
  const ConfirmaEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 141, 188, 211),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              const Text(
                'EMAIL ENVIADO!',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: const Text('VOLTAR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
