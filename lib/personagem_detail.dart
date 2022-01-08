import 'package:flutter/material.dart';

import 'package:app_personagem/personagem.dart';

class PersonagemDetail extends StatelessWidget {
  const PersonagemDetail({
    Key? key,
    required this.item,
  }) : super(key: key);
  final Personagem item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name ?? ''),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.network(item.image ?? ''),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Species:',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        item.species ?? '',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Numero de Episodios:',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(item.episode!.first),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Location Name:',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(item.location!.name ?? ''),
                    ),
                    Text(item.location!.name ?? ''),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
