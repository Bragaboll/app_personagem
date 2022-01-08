import 'package:app_personagem/personagem_detail.dart';
import 'package:flutter/material.dart';
import 'package:app_personagem/personagem.dart';

class PersonagemWidget extends StatelessWidget {
  const PersonagemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);
  final Personagem item;

  @override
  Widget build(BuildContext context) {
    void goToNewPage() {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PersonagemDetail(item: item)));
    }

    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        title: Text(item.name ?? ''),
        leading: Image.network(item.image ?? ''),
        onTap: () {
          goToNewPage();
        },
      ),
    );
  }
}
