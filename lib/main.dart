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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'amore',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, height: 1.0, color: Colors.white),
              ),
              SizedBox(height: 8), // Уменьшенный интервал между строками
              Text(
                'amore',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, height: 1.0, color: Colors.white),
              ),
              SizedBox(height: 8), // Уменьшенный интервал между строками
              Text(
                'amore',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, height: 1.0, color: Colors.white),
              ),
              SizedBox(height: 8), // Уменьшенный интервал между строками
              Text(
                'amore',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, height: 1.0, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
