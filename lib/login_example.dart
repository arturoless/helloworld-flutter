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
                top:50,
                left: 20,
                right: 20,
                bottom: 50
              ),
              child: Column(
               mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    bottom:50
                  ),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(minWidth: double.infinity),
                    child:  
                    RichText(
                      text: TextSpan(
                        text: 'Welcome to \n',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey[600]
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Movies', 
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.red[700]
                            ),
                          )
                        ],
                      ),
                    )
                  )
                 
                )
                ,
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20
                  ),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your username',
                      prefixIcon: Icon(Icons.person)
                    ),
                    controller: emailController,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom:35
                  ),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your password',
                      prefixIcon: Icon(Icons.lock)
                    ),
                    controller: passwordController,
                    obscureText:true,
                  ),
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(minWidth: double.infinity),
                  child:
                    OutlineButton(
                      borderSide: BorderSide(color: Colors.redAccent[400]),
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
                    )
                ),
                ConstrainedBox(
                    constraints: const BoxConstraints(minWidth: double.infinity),
                    child:  
                    RaisedButton(
                      color: Colors.redAccent[400],
                      textColor: Colors.white,
                      child: const Text('REGISTER'),
                      padding: EdgeInsets.all(8.0),
                      onPressed: ()  {
                      
                      },
                    )
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 30
                  ),
                  child:
                    InkWell(
                      onTap: () {
                        print(':(');
                      },
                      child: Text("Forgot password", style: TextStyle(
                        color: Colors.redAccent[400],
                        fontWeight: FontWeight.bold
                      ),),
                    )
                )
                
               ]

              )
            )
            ,
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