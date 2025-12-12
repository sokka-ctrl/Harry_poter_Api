import 'package:flutter/material.dart';
import 'package:harry_poter/models/character/Harry_model.dart';

class PersonaModels extends StatelessWidget {
  const PersonaModels({super.key, required this.model});

   final HarryModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ Container(margin: EdgeInsets.all(6),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(width: 2, color: Colors.blue)),
                child: Row(
                  children:[
                    Container(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                              child: Image.network(model.image, height: 100, width: 70)),
                    ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 12),
                              child: Text(model.fullName,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                          Container(
                            margin: EdgeInsets.only(left: 12),
                            child: Text(model.nickname, style: TextStyle(color: Colors.black87, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 12),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 12),
                            child: Text(model.interpretedBy,style: TextStyle(color: Colors.black87, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 12),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 12),
                            child: Text(model.hogwartsHouse, style: TextStyle(color: Colors.black87, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 12),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 12),
                            child: Text(model.birthdate, style: TextStyle(color: Colors.black54, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 12),),
                          ),
                        ],
                      ),
                    ],
                  )
              ),
    ]);
  }
}
