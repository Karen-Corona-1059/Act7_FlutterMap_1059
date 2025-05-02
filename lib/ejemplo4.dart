import 'package:flutter/material.dart';

class EjemploCinco extends StatelessWidget {
  const EjemploCinco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejemplo 50',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff168c6e),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.orangeAccent,
        alignment: Alignment.center,
        child: const Text('Flutter Mapp'),
        constraints: const BoxConstraints.expand(height: 200),
        transform: Matrix4.rotationZ(0.2),
      ),
    );
  }
}
