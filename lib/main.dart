import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
