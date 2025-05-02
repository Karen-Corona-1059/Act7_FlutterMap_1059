import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EjemploSeis extends StatefulWidget {
  const EjemploSeis({Key? key}) : super(key: key);

  @override
  State<EjemploSeis> createState() => _EjemploSeisState();
}

class _EjemploSeisState extends State<EjemploSeis> {
  int _selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Widget 60', // Asegúrate de que el nombre sea coherente
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffa355cf),
      ),
      body: SafeArea(
        child: Center(
          child: CupertinoButton.filled(
            child: Text('Value = $_selectedValue'),
            onPressed: () => showCupertinoModalPopup(
              context: context,
              builder: (_) => SizedBox(
                width: double.infinity,
                height: 250,
                child: CupertinoPicker(
                  backgroundColor: Colors.white,
                  itemExtent: 30,
                  scrollController: FixedExtentScrollController(
                    initialItem: 1,
                  ),
                  children: const [
                    Text('0'),
                    Text('1'),
                    Text('2'),
                  ],
                  onSelectedItemChanged: (int value) {
                    setState(() {
                      _selectedValue = value;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
