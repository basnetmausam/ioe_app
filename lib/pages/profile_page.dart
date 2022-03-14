import 'package:flutter/material.dart';
import 'package:ioe_app/pages/google_login_controller.dart';
import 'package:ioe_app/pages/login_page.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => GoogleSignInController(),
            child: LoginPage(),
          )
        ],
        child: Scaffold(
          appBar: AppBar(
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      backgroundColor: context.canvasColor,
      drawer: myDrawer(context),
         // 'Profile',
          //style: Theme.of(context).textTheme.bodyText1,
          // theme: ThemeData(
          //   primarySwatch: Colors.blue,
          // ),
          // drawer: myDrawer(context),

          body: LoginPage(),
        )
        );
  }
}