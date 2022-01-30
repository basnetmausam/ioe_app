import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About IOE",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Contact Us",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Card(
            child: Column(
              children: const [
                Card(
                    child: ListTile(
                  title: Text("Email"),
                  trailing: Text("admin@ioe.edu.np"),
                )),
                Card(
                    child: ListTile(
                  title: Text("Telephone"),
                  trailing: Text("+977-1-5521531"),
                )),
                Card(
                    child: ListTile(
                  title: Text("Address"),
                  trailing: Text("P.O. Box No. 1915, Pulchowk, Lalitpur"),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
