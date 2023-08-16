import 'package:flutter/material.dart';


class navScreen extends StatefulWidget{
  @override
  State<navScreen> createState() => _navScreenState();
}

class _navScreenState extends State<navScreen> {
  int sindex=0;
  List<Widget> pages=[
    Center(child: Text('person screen')),
    Center(child: Text('main screen')),

  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
       currentIndex: sindex,
       onTap: (index){
         setState(() {
           sindex=index;
         });

       },
       backgroundColor: Colors.tealAccent,
       items: [
         BottomNavigationBarItem(
           icon: Icon(Icons.person),
           label: 'person'
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.mail),
           label: 'mail'
         )
       ],
     ),
     body: pages[sindex]
   );
  }
}