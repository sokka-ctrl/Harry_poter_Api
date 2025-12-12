import 'package:flutter/material.dart';
import 'package:harry_poter/models/spells/Harry_poter_spells_model.dart';

class SpellsModel extends StatelessWidget {
  const SpellsModel({super.key, required this.model});

  final HarryPoterSpellsModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 400,
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.pink),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Column(
              children: [
                Text('Spell', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text(model.spell, style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.black54)),
                Text('Use', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text(model.use, style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold, color: Colors.black54),)
              ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
