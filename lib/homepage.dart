import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '20 Questions - NA Mammals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '20 Questions - NA Mammals'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
          children: <Widget>[
            const Text("20 Questions", style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.bold, fontSize: 40)),
            const Text("North American Mammals", style: TextStyle(height: 2, fontSize: 20)),
            const SizedBox(width: 0, height: 30),
            /* TODO Display the animal list
              Container(
              margin: const EdgeInsets.all(15),
              child: ElevatedButton(

                onPressed: () {
                  // Do something here
                },
                child: const Padding(
                  padding: EdgeInsets.all(15), //apply padding to all four sides
                  child: Text("Animal List"),
                ),
              ),
            ), */
            /* TODO Guess the system's animal
            Container(
              margin: const EdgeInsets.all(15),
              child: ElevatedButton(

                onPressed: () {
                  // Do something here
                },
                child: const Padding(
                  padding: EdgeInsets.all(15), //apply padding to all four sides
                  child: Text("Guess the animal"),
                ),
              ),
            ), */
            /* TODO The System will guess your animal
            Container(
              margin: const EdgeInsets.all(15),
              child: ElevatedButton(

                onPressed: () {
                  // Do something here
                },
                child: const Padding(
                  padding: EdgeInsets.all(15), //apply padding to all four sides
                  child: Text("Have your animal guessed"),
                ),
              ),
            ), */
            const SizedBox(width: 0, height: 30),
            /* TODO About page, with contact information
            Container(
              margin: const EdgeInsets.all(15),
              child: ElevatedButton(

                onPressed: () {
                  // Do something here
                },
                child: const Padding(
                  padding: EdgeInsets.all(15), //apply padding to all four sides
                  child: Text("About"),
                ),
              ),
            ), */
          ],
        ),
      ),  // Center // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
