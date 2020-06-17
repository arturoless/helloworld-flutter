import 'package:flutter/material.dart';

import 'navigation_view.dart';

import './services/rest_service.dart';

class LoginExample extends StatefulWidget{
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<LoginExample> {
  final snackBar = SnackBar(content: Text('Datos incorrectos.'));

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
                  ),
                  controller: emailController,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter your password',
                    icon: Icon(Icons.lock)
                  ),
                  controller: passwordController,
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
                  onPressed: ()  {
                    setState(() {
                      login(emailController.text,passwordController.text).then((value) => {
                        if (value.token!=null){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyStatefulWidget()))
                        }
                        else{
                          Scaffold.of(context).showSnackBar(snackBar)
                        }
                      }
                      );
                    });
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

    return container;
  }
  
}