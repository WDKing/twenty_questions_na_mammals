import 'package:flutter/material.dart';
import 'animal.dart';


class AnimalDetailPage extends StatelessWidget {
  const AnimalDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final animal = ModalRoute.of(context)!.settings.arguments as Animal;

/*
    // Use the To do to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(animal.animalName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(animal.latinName),
      ),
    );
  }
  */


  // This widget is the root of your application.
 // @override
  //Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animal Details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyAnimalDetailPage( animalData: animal,),
    );
  }
}
class MyAnimalDetailPage extends StatefulWidget {
  const MyAnimalDetailPage({Key? key, required this.animalData}) : super(key: key);

  final Animal animalData;

  @override
  State<MyAnimalDetailPage> createState() => _MyAnimalDetailPageState();
}



class _MyAnimalDetailPageState extends State<MyAnimalDetailPage> {

  @override
  Widget build(BuildContext context) {
    var animal = widget.animalData;
    var questions = animal.questions;

    return  Scaffold(
      appBar: AppBar(
        title: Text(animal.animalName),
      ),
      body: Column(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(animal.latinName),
            ),
            Text(questions.ungulate,),
            Text(questions.carnivore,),
          ]
      ),
    );
  }

}