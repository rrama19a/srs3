import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'Здравствуйте, это Кайратулы Рамазан!',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
