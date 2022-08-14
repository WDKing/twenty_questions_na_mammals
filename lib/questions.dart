class Questions {
  late String ungulate;
  late String carnivore;

  Questions(var jsonQuestionsData) {
    ungulate = jsonQuestionsData['ungulate'];
    carnivore = jsonQuestionsData['carnivore'];
  }
}