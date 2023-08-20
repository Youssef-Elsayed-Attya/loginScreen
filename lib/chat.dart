import 'package:flutter/material.dart';


class chat extends StatelessWidget {
  final name;
  chat(String this.name);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Text('chat'),
    );
  }
}
