import 'package:flutter/material.dart';

class MyAboutPage extends StatefulWidget {
  const MyAboutPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyAboutPage> createState() => _MyAboutPageState();
}

class _MyAboutPageState extends State<MyAboutPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title),
      ),*/
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Text("About 20 Questions: North American Mammals", style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.bold, fontSize: 20)),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("This application was created to be able to play the game of 20 Questions with a focus on North American Mammals.  ", softWrap: true, style: TextStyle(height: 2, fontSize: 12)),
            )
          ],
        ),  // Center // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}