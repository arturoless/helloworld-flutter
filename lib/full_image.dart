import 'package:flutter/material.dart';

class FullImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/BirdmanPoster.jpg'),
            fit: BoxFit.cover)
          ),
        ),
      ]
    );
  }

}