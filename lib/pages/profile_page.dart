import 'package:flutter/material.dart';
import 'package:ioe_app/pages/google_login_controller.dart';
import 'package:ioe_app/pages/login_page.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
        create: (context) => GoogleSignInController(),
        child: LoginPage(),
        )  
      ],
      child: MaterialApp(
        title:'Profile',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage(),
        )
      );
  }
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       body: Material(
  //     color: context.canvasColor,
  //     child: Column(
  //       children: [
  //         Padding(
  //           padding: EdgeInsets.all(24.0),
  //           child: Align(
  //             alignment: Alignment.topLeft,
  //             child: Text(
  //               "Profile",
  //               style: Theme.of(context).textTheme.headline1,
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   ));
  // }
}
//reference:https://medium.com/@palmeiro.leonardo/simple-profile-screen-with-flutter-fe2f1f7cfaf5