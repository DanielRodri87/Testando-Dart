import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela em Branco',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BlankScreen(),
    );
  }
}

class BlankScreen extends StatelessWidget {
  const BlankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela em Branco'),
      ),
      body: const Center(
        child: Text(
          'Esta é uma tela em branco.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
