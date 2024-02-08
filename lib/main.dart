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
                width: 90,
                height: 80,
                color: Colors.yellow,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 60,
                  height: 60,
                  color: Colors.red,
                ),
              ),
            ],
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FIND'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showSearch(context: context, delegate: CustomSearchDelegate());
          },
          child: Text('Open Search'),
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text('Search Results for: $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Suggestions for: $query'),
    );
  }
}
