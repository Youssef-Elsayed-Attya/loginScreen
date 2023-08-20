import 'package:firsttest/chat.dart';
import 'package:flutter/material.dart';


class ChatsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.builder(itemCount: 10, itemBuilder: (context, index) => Card(
        elevation: 5,
        child: ListTile(
          leading: FlutterLogo(),
          title: Text('name ${index}'),
          subtitle: Text('last masage'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => chat('name ${index}'),));

          },
          trailing: CircleAvatar(
            radius: 15,
            child: Text('1'),
          ),
        ),
      ),)
    );
  }

}









//
//
//
//
// ListView.builder(
// itemCount: 10,
// itemBuilder: (context, index) => Card(
// elevation: 10,
// child: ListTile(
// leading: FlutterLogo(),
// title: Text('name ${index}'),
// subtitle: Text('last massage'),
// trailing: Column(
// children: [
// CircleAvatar(
// radius: 10,
// ),
// Text('10:09 am')
// ],
// ),
// onTap: () {
//
// Navigator.push(context, MaterialPageRoute(builder: (context) => chat('name${index}')));
// },
// ),
// ),)