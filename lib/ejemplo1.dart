import 'package:flutter/material.dart';

class EjemploDos extends StatefulWidget {
  const EjemploDos({Key? key}) : super(key: key);

  @override
  State<EjemploDos> createState() => _EjemploDosState();
}

class _EjemploDosState extends State<EjemploDos> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Ejemplo 20',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff55cf79),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: Text(
                  '$_count',
                  style: const TextStyle(fontSize: 40),
                  key: ValueKey(_count),
                ),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
              ),
              ElevatedButton(
                child: const Text('Add'),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
            ],
          ),
        ));
  }
}
