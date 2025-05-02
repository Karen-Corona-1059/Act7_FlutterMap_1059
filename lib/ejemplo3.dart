import 'package:flutter/material.dart';

class EjemploCuatro extends StatelessWidget {
  const EjemploCuatro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Ejemplo 40',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff16708c),
        ),
        body: const Center(
          child: CircularProgressIndicator(
            color: Colors.orangeAccent,
            backgroundColor: Colors.blueGrey,
            value: 0.50,
          ),
        ));
  }
}
