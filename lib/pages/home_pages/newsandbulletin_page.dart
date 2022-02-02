// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:velocity_x/velocity_x.dart';

// class NewsPage extends StatefulWidget {
//   const NewsPage({Key? key}) : super(key: key);

//   @override
//   _NewsPageState createState() => _NewsPageState();
// }

// class _NewsPageState extends State<NewsPage> {
//   var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
//   var data;
//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }

//   getData() async {
//     var res = await http.get(url);
//     data = jsonDecode(res.body);
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: context.canvasColor,
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(24.0),
//             child: Align(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 "News and Bulletin",
//                 style: Theme.of(context).textTheme.headline1,
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 40,
//           ),
//           data != null
//               ? Flexible(
//                   child: ListView.builder(
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: const EdgeInsets.all(16.0),
//                         child: ListTile(
//                           tileColor: Colors.white,
//                           title: Text(data[index]["title"]),
//                           subtitle: Text("ID: ${data[index]["id"]}"),
//                           leading: Image.network(data[index]["url"]),
//                         ),
//                       );
//                     },
//                     itemCount: data.length,
//                   ),
//                 )
//               : const Center(
//                   child: CircularProgressIndicator(),
//                 )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ioe_app/utils/routes.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News & Bulletin",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      backgroundColor: context.canvasColor,
      drawer: myDrawer(context),
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "News & Bulletin",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Flexible(
              child: ListView(
            children: [
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.newssRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "News",
                  ),
                ),
              )),
              Card(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.eventsRoute);
                  },
                  title: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Events"),
                  ),
                  // subtitle: Text("ohhh hoooo"),
                ),
              ),
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.ioemonthlyRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("IOE Monthly Bulletin"),
                ),
              )),
            ],
            padding: const EdgeInsets.all(10),
          ))
        ],
      ),
    );
  }
}
