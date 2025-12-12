import 'package:flutter/material.dart';
import 'package:harry_poter/models/books/Harry_books_model.dart';

class BooksModel extends StatelessWidget {
  const BooksModel({super.key, required this.model});

  final HarryBooksModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.green),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(model.cover, height: 100, width: 70)),
              Container(
                margin: EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Title: ', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                    Text('Original title: ', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                    Text('Number: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),),
                    Text('Realese date:', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                    Text('Pages: ', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                    Text('Description: ', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            Container(
                margin: EdgeInsets.only(left: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(model.title.length > 40
                        ? model.title.substring(0, 35) + "..."
                        : model.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black87, fontStyle: FontStyle.italic)),
                    Text(model.originalTitle.length > 30
                        ? model.description.substring(0, 40) + "..."
                        : model.description, style: TextStyle(color: Colors.black87, fontStyle: FontStyle.italic, fontSize: 10, fontWeight: FontWeight.bold)),
                    Text(model.number.toString(), style: TextStyle(color: Colors.black87, fontStyle: FontStyle.italic, fontSize: 10, fontWeight: FontWeight.bold)),
                    Text(model.releaseDate,style: TextStyle(color: Colors.black87, fontStyle: FontStyle.italic, fontSize: 10, fontWeight: FontWeight.bold)),
                    Text(model.pages.toString(), style: TextStyle(color: Colors.black87, fontStyle: FontStyle.italic, fontSize: 10, fontWeight: FontWeight.bold)),
                    Text( model.description.length > 35
                        ? model.description.substring(0, 40) + "..."
                        : model.description,style: TextStyle(color: Colors.black87, fontStyle: FontStyle.italic, fontSize: 10, fontWeight: FontWeight.bold),)
                  ],
                ),
            ),
            ],
          ),
        ),
      ],
    );
  }
}
