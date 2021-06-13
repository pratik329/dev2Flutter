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
        body: ListView.builder(itemBuilder: (context, i) {
          var n = 3231 - i - i * 23 * (i % 2) - 1;
          return Card(
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(""),
                      ),
                    ),
                    Text(
                      "A Bot ",
                      style: Theme.of(context).textTheme.title,
                    ),
                    Text(
                      " @human$n",
                      style: Theme.of(context).textTheme.overline,
                    )
                  ],
                ),
                Padding(
                  child: Text(
                    "It no human," + "but act like human",
                    style: Theme.of(context).textTheme.body1,
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                ),
                ButtonTheme(
                  child: Row(
                    children: <Widget>[
                      FlatButton(
                        child: Text("follow"),
                        onPressed: () => Scaffold.of(context).showSnackBar(
                            SnackBar(content: Text("Now follow @uman$n"))),
                      ),
                      FlatButton(
                          child: Text("send"),
                          onPressed: () => Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text("you cant to @human$n"))))
                    ],
                  ),
                )
              ],
            ),
          );
        })
        // Center(
        //   child: Chip(
        //     avatar: CircleAvatar(
        //       backgroundImage: NetworkImage(""),
        //     ),
        //     label: Text("A Bot"),
        //   ),
        // ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
