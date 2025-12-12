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
          child: Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(color: Color.fromARGB(100, 61, 61, 61)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HarryPoterScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                          border: Border.all(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      margin: EdgeInsets.only(bottom: 10),
                      alignment: Alignment(0, 0),
                      width: 400,
                        height: 60,
                        child: Text('Click for see characters', style: TextStyle(color: Colors.white, fontSize: 18),))),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HarryPoterBooksScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      margin: EdgeInsets.only(bottom: 10),
                      alignment: Alignment(0, 0),
                      width: 400,
                        height: 60,
                        child: Text('click for see books',style: TextStyle(color: Colors.white, fontSize: 18)))),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HarryPoterHousesScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                          border: Border.all(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      margin: EdgeInsets.only(bottom: 10),
                      alignment: Alignment(0, 0),
                      width: 400,
                        height: 60,
                        child: Text('click for see houses', style: TextStyle(color: Colors.white, fontSize: 18)))),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HarryPoterSpellsScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      alignment: Alignment(0, 0),
                      width: 400,
                        height: 60,
                        child: Text('click for see spells', style: TextStyle(color: Colors.white, fontSize: 18))))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

