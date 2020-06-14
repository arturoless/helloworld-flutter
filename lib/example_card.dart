import 'package:flutter/material.dart';

class ExampleCard extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final content = Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Column(
               mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                Image(image: AssetImage('assets/Roma.jpg')),
                const ListTile(
                  leading: Icon(Icons.local_movies),
                  title: Text('Roma (2018)'),
                  subtitle: Text('Directed by Alfonso Cuarón.'),

                ),
               ]

            ),
            

            ButtonBar(
              children: <Widget>[
                FlatButton(
                  textColor: Colors.redAccent[400],
                  child: const Text('RENT'),
                  onPressed: () {/* ... */},
                ),
                FlatButton(
                  textColor: Colors.redAccent[400],
                  child: const Text('BUY'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ],
        ),
      );
    return content;
  }

}