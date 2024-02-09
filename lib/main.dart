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
