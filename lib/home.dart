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
        body: Column(
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
            SizedBox(height: 20),
            Center(
              child: Card(
                elevation: 4,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                        color:  Colors.green,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Text(
                        'Opções',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey[400],
                      height: 0,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 4,
          shadowColor: Colors.grey.shade400,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 32, color: Colors.green), // Ícone verde
              const SizedBox(height: 8),
              Text(text, style: const TextStyle(color: Colors.black)), // Texto preto
            ],
          ),
        ),
      ),
    );
  }
}
