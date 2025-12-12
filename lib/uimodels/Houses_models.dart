import 'package:flutter/material.dart';
import 'package:harry_poter/models/houses/Harry_poter_houses_model.dart';

class HousesModels extends StatelessWidget {
  const HousesModels({super.key, required this.model});

  final HarryPoterHousesModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(width: 2,color: Colors.deepPurpleAccent),borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Text('Animal: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  Text('Founder: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  Text('Emoji: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  Text('House: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(model.animal, style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 16),),
                  Text(model.founder, style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 16 ),),
                  Text(model.emoji, style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 16 ),),
                  Text(model.house, style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 16 ),),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Colors', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: model.colors!.map((c) => Text(c, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)).toList(),
                      ),
                    ),
                  ],
                ),
              )
              
            ],
          ),
        )
      ],
    );
  }
}
