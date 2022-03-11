import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ioe_app/pages/google_login_controller.dart';
import 'package:provider/provider.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:velocity_x/velocity_x.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      drawer: myDrawer(context),
      body: loginUI(),
    );
  }

  loginUI() {
    return Consumer<GoogleSignInController>(builder: (context, model, child) {
      if (model.googleAccount != null) {
        return Center(
          child: loggedInUI(model),
        );
      } else {
        return loginControls(context);
      }
    });
  }

  loggedInUI(GoogleSignInController model) {
    String email = model.googleAccount!.email;
    var rollNo = email.substring(0, 9);
    var college_id = email.substring(16, 23);
    var college = 0.toString();
    String name = model.googleAccount!.displayName ?? '';
    // if (college_id == "pcampus") {
    //   college = "Pulchowk Campus";
    // }
    var batch = email.substring(0, 3);

    switch (college_id) {
      case "pcampus":
        {
          college = "Pulchowk Campus";
        }
        break;

      case "acem":
        {
          college = "Advanced College of Engineering and Management";
        }
        break;

      case "thapathali":
        {
          college = "Thapathali Campus";
        }
        break;

      case "Purwanchal":
        {
          college = "Purwanchal Campus";
        }
        break;

      default:
        {
          college = "Pulchowk Campus ERR";
        }
        break;
    }

    var FieldofStudy = email.substring(3, 6);
    var  FoS = 0.toString();
    switch(FieldofStudy){
      case "bct":
        {
          FoS = "Computer Engineering";
        }
        break;
      default:
        {
          FoS = "Bachelor in Computer Engineering";
        }
        break;
    }
  return SingleChildScrollView(
        child: Card(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.black87,
                child: CircleAvatar(
                  backgroundImage:
                      Image.network(model.googleAccount!.photoUrl ?? '').image,
                  radius: 75,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Card(
                  child: ListTile(
                title: Text(
                  "TU Regd.No.",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text("xxxxxxxxxx"),
              )),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Personal Information:",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ).pOnly(top: 20, left: 16),
              const Divider(
                color: Color.fromARGB(255, 54, 16, 116),
                thickness: 2,
              ),
              Card(
                  child: ListTile(
                title: Text("Name"),
                trailing: Text(name), //model.googleAccount!.displayName ?? ''
              )),
              Card(
                  child: ListTile(
                title: Text("Email"),
                trailing: Text(email),
              )),
              const Card(
                  child: ListTile(
                title: Text("Contact"),
                trailing: Text("xxxxxxxxxxx"),
              )),
              const Card(
                  child: ListTile(
                title: Text("DOB"),
                trailing: Text("xxxxxxxxxxx"),
              )),
              const Card(
                  child: ListTile(
                title: Text("Gender"),
                trailing: Text("xxxxxxxxxxx"),
              )),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "College Details:",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ).pOnly(top: 20, left: 16),
              const Divider(
                color: Color.fromARGB(255, 54, 16, 116),
                thickness: 2,
              ),
              Card(
                  child: ListTile(
                title: Text("College"),
                trailing: Text(college),                          //college
              )),
              Card(
                  child: ListTile(
                title: Text("College RollNo."),
                trailing: Text(rollNo),                           //rollNo
              )),
              Card(
                  child: ListTile(
                title: Text("Batch"),
                trailing: Text("2${batch}"),                      //batch
              )),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Faculty Details:",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ).pOnly(top: 20, left: 16),
              const Divider(
                color: Color.fromARGB(255, 54, 16, 116),
                thickness: 2,
              ),
              Card(
                  child: ListTile(
                title: Text("Field of Study"),
                trailing: Text(FoS),                        //field of study
              )),
              Card(
                  child: ListTile(
                title: Text("Degree"),
                trailing: Text("Bachelor in Engineering"),
              )),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      );

  }

  loginControls(BuildContext context) {
    return Center(
      child: FloatingActionButton.extended(
        onPressed: () {
          Provider.of<GoogleSignInController>(context, listen: false).login();
        },
        icon:
            Image.asset('assets/images/google_logo.png', width: 30, height: 30),
        label: Text('Sign in with Google'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
    // child:Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     GestureDetector(
    //       child: Image.asset(
    //         'assets/images/signinwithgoogle.png',
    //         width: 200,
    //     ),
    //       onTap: (){
    //         Provider.of<GoogleSignInController>(context, listen: false).login();
    //       },
    //     ),
    //   ],
    //   ),
    //);
  }
}


    // return ListView(
    //   children: <Widget>[
    //     Container(
    //       height: 250,
    //       decoration: BoxDecoration(
    //         gradient: LinearGradient(
    //           colors: [Colors.blue, Colors.blue.shade100],
    //           begin: Alignment.centerLeft,
    //           end: Alignment.centerRight,
    //           stops: [0.5, 0.9],
    //         ),
    //       ),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: <Widget>[
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceAround,
    //             children: <Widget>[
    //               CircleAvatar(
    //                 backgroundColor: Colors.white70,
    //                 minRadius: 60.0,
    //                 child: CircleAvatar(
    //                   radius: 50.0,
    //                   backgroundImage:
    //                       Image.network(model.googleAccount!.photoUrl ?? '')             //photo
    //                           .image,
    //                 ),
    //               ),
    //             ],
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           Text(
    //             model.googleAccount!.displayName ?? '',                                    //name
    //             style: TextStyle(
    //               fontSize: 35,
    //               fontWeight: FontWeight.bold,
    //               color: Colors.white,
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     Container(
    //       child: Column(
    //         children: <Widget>[
    //           ListTile(
    //             title: Text(
    //               'Email',
    //               style: TextStyle(
    //                 color: Colors.black,
    //                 fontSize: 20,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //             subtitle: Text(
    //               email,
    //               //model.googleAccount!.email,
    //               style: TextStyle(fontSize: 18),
    //             ),
    //           ),
    //           Divider(),
    //           ListTile(
    //             title: Text(
    //               'College',
    //               style: TextStyle(
    //                 color: Colors.black,
    //                 fontSize: 20,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //             subtitle: Text(
    //               college, //college name
    //               style: TextStyle(fontSize: 18),
    //             ),
    //           ),
    //           Divider(),
    //           ListTile(
    //             title: Text(
    //               'Roll No',
    //               style: TextStyle(
    //                 color: Colors.black,
    //                 fontSize: 20,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //             subtitle: Text(
    //               rollNo,     //roll no
    //               style: TextStyle(fontSize: 18),
    //             ),
    //           ),
    //           Divider(),
    //           ListTile(
    //             title: Text(
    //               'Field of Study',
    //               style: TextStyle(
    //                 color: Colors.black,
    //                 fontSize: 20,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //             subtitle: Text(
    //               FoS, //field of study
    //               style: TextStyle(fontSize: 18),
    //             ),
    //           ),
    //           Divider(),
    //           ListTile(
    //             title: Text(
    //               'Degree',
    //               style: TextStyle(
    //                 color: Colors.black,
    //                 fontSize: 20,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //             subtitle: Text(
    //               'Bachelor in Engineering',
    //               style: TextStyle(fontSize: 18),
    //             ),
    //           ),
    //           Divider(),
    //           ListTile(
    //             title: Text(
    //               'Contact No',
    //               style: TextStyle(
    //                 color: Colors.black,
    //                 fontSize: 20,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //             subtitle: Text(
    //               '9811111111',
    //               style: TextStyle(fontSize: 18),
    //             ),
    //           ),
    //         ],
    //       ),
    //     )
    //   ],
    // );