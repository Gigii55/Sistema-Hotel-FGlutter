import 'package:flutter/material.dart';
import 'package:primeiro_app/home.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 141, 188, 211),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'NOME COMPLETO',
                  labelText: 'NOME COMPLETO',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  hintText: 'EMAIL',
                  labelText: 'EMAIL',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  hintText: 'TELEFONE',
                  labelText: 'TELEFONE',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  hintText: 'CPF',
                  labelText: 'CPF',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.numbers),
                ),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  hintText: 'SENHA',
                  labelText: 'SENHA',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                ),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  hintText: 'CONFIRMAR SENHA',
                  labelText: 'CONFIRMAR SENHA',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(onPressed: () {}, child: Text('CADASTRAR')),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
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
