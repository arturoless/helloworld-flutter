import 'package:flutter/material.dart';

import 'navigation_view.dart';

class LoginExample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final content = Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
             Container(
              margin: EdgeInsets.only(
                top:20,
                left: 20,
                right: 20
              ),
              child: Column(
               mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter your email',
                    icon: Icon(Icons.email)
                  )
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter your password',
                    icon: Icon(Icons.lock)
                  ),
                  obscureText:true,
                )
               ]

              )
            )
            ,
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  textColor: Colors.redAccent[400],
                  child: const Text('LOG IN'),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyStatefulWidget()));
                  },
                ),
              ],
            ),
          ],
        ),
      );
      final container = Container(
        decoration: BoxDecoration(
          image:DecorationImage(image: AssetImage('assets/wallpaper.jpg'),
          fit: BoxFit.cover
          )
        ),
        child:Center(
          child:content)
      );

    return Scaffold(
      body: container
    );
  }
  
}