import 'package:flutter/material.dart';

class PantallaInicial extends StatelessWidget {
  const PantallaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Inicial Corona',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff9f21f3),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejemplo1');
              },
              child: const Text('Widget 10'),
            ),
            const SizedBox(height: 20), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejemplo2');
              },
              child: const Text('Widget 20'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejemplo3');
              },
              child: const Text('Widget 30'),
            ),
            const SizedBox(height: 20), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejemplo4');
              },
              child: const Text('Widget 40'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejemplo5');
              },
              child: const Text('Widget 50'),
            ),
            const SizedBox(height: 20), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejemplo6');
              },
              child: const Text('Widget 60'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
