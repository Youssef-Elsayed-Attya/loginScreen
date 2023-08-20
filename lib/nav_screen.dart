import 'package:firsttest/chats_screen.dart';
import 'package:flutter/material.dart';


class navScreen extends StatefulWidget{
  @override
  State<navScreen> createState() => _navScreenState();
}

class _navScreenState extends State<navScreen> {
  int sindex=0;
  List<Widget> pages=[
    ChatsScreen(),
    Center(child: Text('main screen')),

  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       leading: IconButton(icon: Icon(Icons.close),
       onPressed: () => Navigator.pop(context),),
       backgroundColor: Colors.deepPurple,
       title: Text(
         'Home Screen',
       ),
     ),
     bottomNavigationBar: BottomNavigationBar(
       currentIndex: sindex,
       onTap: (index){
         setState(() {
           sindex=index;
         });

       },
       backgroundColor: Colors.deepPurple,
       items: [
         BottomNavigationBarItem(
           icon: Icon(Icons.chat),
           label: 'chats'
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.settings),
           label: 'settings'
         )
       ],
     ),
     body: pages[sindex]
   );
  }
}