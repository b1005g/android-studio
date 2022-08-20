import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // 정적인 것, 바꿀 수 없는 것
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
           title: 'Flutter Demo',
           theme: ThemeData(primarySwatch: Colors.blue),
           home: MyHomePage(title: 'test')
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(widget.title),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("increasing"),
          Text('$_counter'),

        ]
      ),

    ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'increment',
        child: Icon(Icons.add)
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
}



