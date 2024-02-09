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
          child: Text(
            'Здравствуйте, это Кайратулы Рамазан!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  final List<String> _pages = ['Ram', 'Zan', 'Kay', 'Ratov'];
  final List<Widget> _tabViews = [
    Center(child: Text('Ram Page')),
    Center(child: Text('ZAN Page')),
    Center(child: Text('Kay Page')),
    Center(child: Text('Ratov Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: _pages.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('RAMAZAN'),
            bottom: TabBar(
              tabs: _pages.map((page) => Tab(text: page)).toList(),
            ),
          ),
          body: TabBarView(
            children: _tabViews,
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  width: 80,
                  height: 80,
                  color: Color.fromARGB(255, 23, 70, 90),
                ),
              ),  
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 40, left: 40),
                  width: 60,
                  height: 60,
                  color: Color.fromARGB(255, 3, 188, 255),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 60, left: 60),
                  width: 40,
                  height: 40,
                  color: Color.fromARGB(255, 13, 237, 237),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





