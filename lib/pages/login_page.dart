import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ioe_app/pages/google_login_controller.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Login'),
        backgroundColor: Colors.blue,
      ),
      body: loginUI(),
    );
  }

  loginUI(){
    return Consumer<GoogleSignInController>(
      builder: (context, model, child){
        if(model.googleAccount != null){
          return Center(child: loggedInUI(model ),);
        }
        else{
          return loginControls( context);
        }
      }
    );
  }

  loggedInUI(GoogleSignInController model) {
    return ListView(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.blue.shade100
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.5, 0.9],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        minRadius: 60.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              Image.network(model.googleAccount!.photoUrl ?? '').image,
                      ),
                    ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    model.googleAccount!.displayName ?? '',//name
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      model.googleAccount!.email,
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'College',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Pulchowk Campus',
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Roll No',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      '075bct070',
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Field of Study',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Computer Engineering',
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Degree',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Bachelor in Engineering',
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Contact No',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      '9811111111',
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        );
  }

  loginControls(BuildContext context) {
    return Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: Image.asset(
              'assets/images/signinwithgoogle.png',
              width: 200,
          ),
            onTap: (){
              Provider.of<GoogleSignInController>(context, listen: false).login();
            },
          ),
        ],
        ),
      );  
  }
}