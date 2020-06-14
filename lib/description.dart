import 'package:flutter/material.dart';

class Description extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    String descriptionText = "asasas";
    final star = Container(
      margin: EdgeInsets.only(
        top:320,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Colors.yellow
      ),
    );
    final title= Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320,
            left: 20,
            right: 20
          ),
          child: Text('Dani Ela',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w900
            )
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star
          ],
        )
      ],
    );

    final description = Container(
       margin: EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20
          ),
        child: Text(
          descriptionText,
          style: TextStyle(
              fontSize: 16.0,
            )

        ),
    );
    final content = Column(
      children: <Widget>[
        title,
        description
      ],
    );
    return content;
  }
  
}