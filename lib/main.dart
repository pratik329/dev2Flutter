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
    return Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text(widget.title),
        ),
        body: GridView.builder(
          padding: EdgeInsets.all(20.0),
          itemCount: 15,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 50.0,
              mainAxisSpacing: 100.0),
          itemBuilder: (context, index) => Text(
            "${index + 1}",
            style: Theme.of(context).textTheme.display1,
          ),
        )
        // GridView.extent(
        //   maxCrossAxisExtent: 50.0,
        //   crossAxisSpacing: 50.0,
        //   mainAxisSpacing: 100.0,
        //   padding: EdgeInsets.all(20.0),
        //   children: [1, 2, 3, 4, 5, 6, 7, 8, 9.10, 11, 12, 13, 14, 15]
        //       .map(
        //         (e) => Text(
        //           "$e",
        //           style: Theme.of(context).textTheme.display1,
        //         ),
        //       )
        //       .toList(),
        // ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
