import 'package:flutter/material.dart';
import 'image_example.dart';


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
                  child: const Text('VIEW POSTER'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ImageExample()));
                  },
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
    return  Scaffold(
      appBar: AppBar(
        title: Text('List of movies'),
      ),
      body: content
    );
  }

}