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


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(236, 0, 222, 204), 
      ),
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
    // Список действий в верхнем правом углу диалога поиска
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          // Очистка строки поиска
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Виджет в верхнем левом углу диалога поиска
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        // Закрытие диалога поиска
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Виджеты, отображаемые при завершении поиска
    return Center(
      child: Text('Search Results for: $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Виджеты, отображаемые при вводе текста в поле поиска
    return Center(
      child: Text('Suggestions for: $query'),
    );
  }
}



