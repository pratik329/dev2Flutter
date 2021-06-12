import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    const Categories = ["Automotive", "Books", "Electronics", "Food"];
    const Products = [
      ["Car", "Type", "Fuel", "Oil"],
      ["Programing Book", "Novel", "Pilitics Bookk", "Bussiness Book"],
      ["Desktop Computer", "Laptop", "Computer", "Keybord"],
      ["Pasta", "Pizza", "Bread", "Cheese", "Ham"]
    ];

    return Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text(widget.title),
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, i) => Dismissible(
            background: Container(
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.clear,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.clear,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            key: UniqueKey(),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://pragprag.com/favicon.png"),
              ),
              title: Text("Example ${i + 1}"),
            ),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
