import 'package:flutter/material.dart';
import 'package:harry_poter/screens/Harry_Poter_Screen.dart';
import 'package:harry_poter/screens/Harry_poter_books_screen.dart';
import 'package:harry_poter/screens/Harry_poter_houses_screen.dart';
import 'package:harry_poter/screens/Harry_poter_spells_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HarryPoterScreen()));
                  },
                  child: Text('Click for see characters')),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HarryPoterBooksScreen()));
                  },
                  child: Text('click for see books')),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HarryPoterHousesScreen()));
                  },
                  child: Text('click for see houses')),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HarryPoterSpellsScreen()));
                  },
                  child: Text('click for see spells'))
            ],
          ),
        ),
      ),
    );
  }
}

