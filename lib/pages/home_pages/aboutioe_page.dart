import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade900,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "About IOE",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
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
            padding: EdgeInsets.all(10),
          ))
        ],
      ),
    );
  }
}
