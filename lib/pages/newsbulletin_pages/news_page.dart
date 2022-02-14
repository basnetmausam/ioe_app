// // import 'package:flutter/material.dart';
// // import 'package:ioe_app/utils/homeDrawer.dart';
// // import 'package:ioe_app/utils/routes.dart';
// // import 'package:velocity_x/velocity_x.dart';
// // import 'package:ionicons/ionicons.dart';

// // class NewssPage extends StatelessWidget {
// //   const NewssPage({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(
// //           "News",
// //           style: Theme.of(context).textTheme.bodyText1,
// //         ),
// //       ),
// //       backgroundColor: context.canvasColor,
// //       drawer: myDrawer(context),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:velocity_x/velocity_x.dart';

// class NewssPage extends StatefulWidget {
//   const NewssPage({Key? key}) : super(key: key);

//   @override
//   _NewsPageState createState() => _NewsPageState();
// }

// class _NewsPageState extends State<NewssPage> {
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
//                           // leading: Image.network(data[index]["url"]),
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
import 'package:ioe_app/model/newsmodel.dart';
import 'package:ioe_app/pages/newsbulletin_pages/news.dart';
import 'package:ioe_app/utils/newsdata.dart';
import 'package:velocity_x/velocity_x.dart';

class NewssPage extends StatefulWidget {
  const NewssPage({Key? key}) : super(key: key);

  @override
  State<NewssPage> createState() => _NewssPageState();
}

class _NewssPageState extends State<NewssPage> {
  List<NewsModel> news = <NewsModel>[];
  bool _loading = true;

  getNews() async {
    NewsHaru newsdata = NewsHaru();
    await newsdata.getNews();
    news = newsdata.dataToBeSavedIn;
    setState(() {
      _loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      body: _loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: news.length,
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true, // add this otherwise an error
              itemBuilder: (context, index) {
                final newsdata = news[index];
                return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              NewsDetailPage(news: newsdata))),
                  child: NewsTemplate(
                    urlToImage: news[index].image_url,
                    title: news[index].title,
                    description: news[index].description,
                    url: news[index].link,
                    content: news[index].full_description,
                  ),
                );
              },
            ),
    );
  }
}

class NewsTemplate extends StatelessWidget {
  String title, description, urlToImage, url, content;
  NewsTemplate(
      {required this.title,
      required this.description,
      required this.urlToImage,
      required this.url,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Hero(
        tag: 404,
        child: Card(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  child: Container(
                    // width: double.infinity,
                    color: context.accentColor.withOpacity(0.4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.calendar_today_rounded,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "2022/02/19",
                          style: Theme.of(context).textTheme.bodyText2,
                        )
                      ],
                    ).py4().px12(),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
              // const SizedBox(height: 8),
              // Text(
              //   description,
              //   style: TextStyle(fontSize: 15.0, color: Colors.grey[800]),
              // ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
