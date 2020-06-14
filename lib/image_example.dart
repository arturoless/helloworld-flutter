import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final content =Image(image: AssetImage('assets/Roma.jpg'));

    return content;
  }
  
}