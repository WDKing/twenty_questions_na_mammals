import 'questions.dart';

class Animal {
  late String animalName;
  late String latinName;
  late Questions questions;

  Animal(var jsonAnimalData) {
    animalName = jsonAnimalData['animalName'];
    latinName = jsonAnimalData['latinName'];
    questions = Questions(jsonAnimalData['questions']);
  }
}