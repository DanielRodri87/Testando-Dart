import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela Inicial',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    'https://images.squarespace-cdn.com/content/v1/55a86f5be4b04793ffcf2904/1512155069584-01F52YXSHZIA7WRE2963/image-asset.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 2,
                  color: Colors.green,
                ),
              ],
            ),
            Positioned(
              top: 40,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'FutApp',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10), // Espaço entre o título e a imagem
                ],
              ),
            ),
            Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    _customSquareButton(
                      text: 'Criar Sala',
                      icon: Icons.group_add,
                      onPressed: () {},
                    ),
                    _customSquareButton(
                      text: 'Adicionar Informações',
                      icon: Icons.add_circle_outline,
                      onPressed: () {},
                    ),
                    _customSquareButton(
                      text: 'Planejar Jogos',
                      icon: Icons.gamepad_outlined,
                      onPressed: () {},
                    ),
                    _customSquareButton(
                      text: 'Criar Times',
                      icon: Icons.group_outlined,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _customSquareButton(
      {required String text,
      required IconData icon,
      required VoidCallback onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 4,
        shadowColor: Colors.grey.shade400,
        primary: Colors.white, // Alterado para branco
        onPrimary: Colors.black,
        textStyle: const TextStyle(fontSize: 18.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 24, color: Colors.green), // Ícone verde
          const SizedBox(height: 10),
          Text(text, style: const TextStyle(color: Colors.black)), // Texto preto
        ],
      ),
    );
  }
}
