import 'dart:convert';

import 'package:app_personagem/personage_widget.dart';
import 'package:app_personagem/personagem.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Personagem> personagemList = [];
  bool loading = false;
  @override
  void initState() {
    carregarPersonagem();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Personagem')),
      ),
      body: ListView.builder(
          itemCount: personagemList.length,
          itemBuilder: (context, index) {
            return PersonagemWidget(
              item: personagemList[index],
            );
          }),
    );
  }

  void carregarPersonagem() {
    var url = Uri.parse('https://rickandmortyapi.com/api/character/1,183');
    http.get(url).then((response) {
      if (response.statusCode == 200) {
        List<dynamic> json = const JsonDecoder().convert(response.body);
        setState(() {
          personagemList = json.map<Personagem>((item) {
            return Personagem.fromJson(item);
          }).toList();
        });
      } else {
        return [];
      }
    });
  }
}
