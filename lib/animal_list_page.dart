import 'package:flutter/material.dart';
import 'dart:convert';
import 'home_page.dart';

class AnimalListPage extends StatefulWidget {
  const AnimalListPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AnimalListPage> createState() => _AnimalListPageState();
}

class _AnimalListPageState extends State<AnimalListPage> {

  late List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animal List'),
        ),
        body: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('jsonfiles/animal_list.json'),
            builder: (context, snapshot) {
              // Decode the JSON
              var jsonAnimalData = json.decode(snapshot.data.toString());

              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 32, bottom: 32, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const MyHomePage(title: 'MyHomePage',)));
                                },
                                child: Text(
                                  jsonAnimalData['Animals'][index]['Animal Name'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                              ),
                              Text(
                                jsonAnimalData['Animals'][index]['Latin Name'],
                                style: TextStyle(color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                          //SizedBox(width: 20),
                          const SizedBox(
                            height: 50,
                            width: 50,
                            //child: Image.asset(jsonAnimalData['Animals'][index]['img']),
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: jsonAnimalData == null ? 0 : jsonAnimalData['Animals'].length,
              );
            },
          ),
        ));
  }
}