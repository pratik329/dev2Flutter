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
    List<Post> posts = [
      Post(
        postText: "This is a short Post",
        profileName: "Short Post",
        // profilePicture: NetworkImage("")
      ),
      Post(
        postText: "This is a Medium Post",
        profileName: "Medium Post",
        // profilePicture: NetworkImage("")
      )
    ];

    return Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text(widget.title),
        ),
        body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, i) => Card(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                        // backgroundImage: posts[i].profilePicture,
                        ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        posts[i].profileName,
                        style: Theme.of(context).textTheme.subhead,
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: FractionalOffset.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      posts[i].postText,
                      style: Theme.of(context).textTheme.body1,
                    ),
                  ),
                ),
                Divider(),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.thumb_up,
                        color: Colors.redAccent,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.comment,
                        color: Colors.greenAccent,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.share,
                        color: Colors.blueAccent,
                      ),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class Post {
  Post({required this.profileName, required this.postText});

  // ImageProvider profilePicture;
  String profileName;
  String postText;
}
