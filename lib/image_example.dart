import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final content =Image(image: AssetImage('assets/RomaPoster.jpg'));

    return  Scaffold(
      appBar: AppBar(
        title: Text("Poster"),
      ),
      body: Center(
        child: content,
      )
    );
  }
  
}