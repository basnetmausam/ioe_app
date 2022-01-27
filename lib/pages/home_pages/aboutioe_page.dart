import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ioe_app/pages/homeDrawer.dart';
import 'package:ioe_app/pages/homeDrawer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About IOE'),
        centerTitle: true,

        //backgroundColor: Colors.indigo.shade900,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.indigo.shade900,
            Colors.indigo,
            Colors.red.shade100
          ])),
        ),
      ),
      drawer: myDrawer(context),
      backgroundColor: context.canvasColor,
      body: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Flexible(
              child: ListView(
            children: const [
              Card(
                  child: ListTile(
                title: Text("IOE at a Glance"),
              )),
              Card(
                child: ListTile(
                  title: Text("Message from Dean"),
                ),
              ),
              Card(
                  child: ListTile(
                title: Text("Vision Mission Golas and Objectives"),
              )),
              Card(
                  child: ListTile(
                title: Text("History of IOE"),
              )),
              Card(
                  child: ListTile(
                title: Text("Faculties & Staffs"),
              )),
              Card(
                  child: ListTile(
                title: Text("Contact Us"),
              )),
              Card(
                  child: ListTile(
                title: Text("IOE Email Login"),
              )),
            ],
            padding: const EdgeInsets.all(10),
          ))
        ],
      ),
    );
  }
}
