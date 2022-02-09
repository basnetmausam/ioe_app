// import 'package:flutter/material.dart';
// import 'package:ioe_app/utils/homeDrawer.dart';
// import 'package:ioe_app/utils/routes.dart';
// import 'package:velocity_x/velocity_x.dart';
// import 'package:ionicons/ionicons.dart';

// class NewssPage extends StatelessWidget {
//   const NewssPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "News",
//           style: Theme.of(context).textTheme.bodyText1,
//         ),
//       ),
//       backgroundColor: context.canvasColor,
//       drawer: myDrawer(context),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

class NewssPage extends StatefulWidget {
  const NewssPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewssPage> {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  var data;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "News and Bulletin",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          data != null
              ? Flexible(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ListTile(
                          tileColor: Colors.white,
                          title: Text(data[index]["title"]),
                          subtitle: Text("ID: ${data[index]["id"]}"),
                          // leading: Image.network(data[index]["url"]),
                        ),
                      );
                    },
                    itemCount: data.length,
                  ),
                )
              : const Center(
                  child: CircularProgressIndicator(),
                )
        ],
      ),
    );
  }
}
