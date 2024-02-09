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
