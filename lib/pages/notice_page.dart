import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';

import 'package:velocity_x/velocity_x.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notices",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      drawer: myDrawer(context),
      body: SingleChildScrollView(
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
                      AssetImage("assets/images/profdrdrjoshi.jpg"),
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
              const Card(
                  child: ListTile(
                title: Text("Name"),
                trailing: Text("xxxxxxxxxxx"),
              )),
              const Card(
                  child: ListTile(
                title: Text("Email"),
                trailing: Text("xxxxxxxxxxxx"),
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
              const Card(
                  child: ListTile(
                title: Text("College"),
                trailing: Text("xxxxxxxxxxx"),
              )),
              const Card(
                  child: ListTile(
                title: Text("College RollNo."),
                trailing: Text("xxxxxxxxxxx"),
              )),
              const Card(
                  child: ListTile(
                title: Text("Admission Date"),
                trailing: Text("xxxxxxxxxxx"),
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
              const Card(
                  child: ListTile(
                title: Text("Field of Study"),
                trailing: Text("xxxxxxxxxxx"),
              )),
              const Card(
                  child: ListTile(
                title: Text("Degree"),
                trailing: Text("xxxxxxxxxxx"),
              )),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
