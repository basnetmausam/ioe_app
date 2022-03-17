// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:pull_to_refresh/pull_to_refresh.dart';
// import 'package:ioe_app/model/newsmodel.dart';
// import 'package:velocity_x/velocity_x.dart';

// import '../pages/newsbulletin_pages/news.dart';

// class NewsHaru extends StatefulWidget {
//   const NewsHaru({Key? key}) : super(key: key);

//   @override
//   _NewsHaruState createState() => _NewsHaruState();
// }

// class _NewsHaruState extends State<NewsHaru> {
//   int currentPage = 0;

//   late int totalPages;

//   List<Datum> passengers = <Datum>[];

//   final RefreshController refreshController =
//       RefreshController(initialRefresh: true);

//   Future<bool> getNews({bool isRefresh = false}) async {
//     if (isRefresh) {
//       currentPage = 0;
//     } else {
//       if (currentPage >= totalPages) {
//         refreshController.loadNoData();
//         return false;
//       }
//     }

//     final Uri uri = Uri.parse(
//         "https://api.instantwebtools.net/v1/passenger?page=$currentPage&size=15");

//     final response = await http.get(uri);

//     if (response.statusCode == 200) {
//       final result = newsModelFromJson(response.body);

//       if (isRefresh) {
//         passengers = result.data;
//       } else {
//         passengers.addAll(result.data);
//       }

//       currentPage++;

//       totalPages = result.totalPages;

//       // print(response.body);
//       setState(() {});
//       return true;
//     } else {
//       return false;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SmartRefresher(
//         controller: refreshController,
//         enablePullUp: true,
//         onRefresh: () async {
//           final result = await getNews(isRefresh: true);
//           if (result) {
//             refreshController.refreshCompleted();
//           } else {
//             refreshController.refreshFailed();
//           }
//         },
//         onLoading: () async {
//           final result = await getNews();
//           if (result) {
//             refreshController.loadComplete();
//           } else {
//             refreshController.loadFailed();
//           }
//         },
//   child: ListView.builder(
//     itemCount: passengers.length,
//     physics: const ClampingScrollPhysics(),
//     shrinkWrap: true, // add this otherwise an error
//     itemBuilder: (context, index) {
//       final newsdata = passengers[index];
//       return InkWell(
//         onTap: () => Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => NewsDetailPage(news: newsdata))),
//         child: NewsTemplate(
//           trips: passengers[index].trips,
//           name: passengers[index].name,
//           airline: passengers[index].airline,
//         ),
//       );
//     },
//   ),
// ),
//     );
//   }
// }

// class NewsTemplate extends StatelessWidget {
//   String name;
//   int trips;
//   var airline;

//   NewsTemplate({
//     required this.trips,
//     required this.name,
//     required this.airline,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(16),
//       child: Card(
//         child: Column(
//           // mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             ClipRRect(
//                 borderRadius: const BorderRadius.only(
//                   bottomLeft: Radius.circular(10),
//                   bottomRight: Radius.circular(10),
//                 ),
//                 child: Container(
//                   // width: double.infinity,
//                   color: context.accentColor.withOpacity(0.4),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       const Icon(
//                         Icons.calendar_today_rounded,
//                         size: 20,
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Text(
//                         "2022/02/19",
//                         style: Theme.of(context).textTheme.bodyText2,
//                       )
//                     ],
//                   ).py4().px12(),
//                 )),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 airline[0].slogan.toString(),
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20.0,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Container(
//               height: 200.0,
//               width: 500.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 image: DecorationImage(
//                   image: NetworkImage(airline[0].logo.toString()),
//                   fit: BoxFit.fitWidth,
//                 ),
//               ),
//             ),
//             // Padding(
//             //   padding: const EdgeInsets.all(8.0),
//             //   child: Text(
//             //     airline[0].slogan.toString(),
//             //     style: const TextStyle(
//             //       fontWeight: FontWeight.bold,
//             //       fontSize: 15.0,
//             //     ),
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../pages/newsbulletin_pages/news.dart';

import 'package:http/http.dart' as http;
import 'package:ioe_app/model/newsmodel.dart';

class FetchNewsList {
  var data = [];
  List<NewsModel> results = [];
  String urlList = 'http://127.0.0.1:8000/news/';

  Future<List<NewsModel>> getnews() async {
    var url = Uri.parse(urlList);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        data = json.decode(response.body);
        results = data.map((e) => NewsModel.fromJson(e)).toList();
        // if (query!= null){
        //   results = results.where((element) => element.name!.toLowerCase().contains((query.toLowerCase()))).toList();
        //}
      } else {
        print("fetch error");
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return results;
  }
}

class NewsHaru extends StatefulWidget {
  const NewsHaru({Key? key}) : super(key: key);

  @override
  State<NewsHaru> createState() => _NewsHaruState();
}

class _NewsHaruState extends State<NewsHaru> {
  FetchNewsList _fetchNewsList = FetchNewsList();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<NewsModel>>(
          future: _fetchNewsList.getnews(),
          builder: (context, snapshot) {
            var data = snapshot.data;
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            return
            ListView.builder(
              itemCount: data?.length,
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true, // add this otherwise an error
              itemBuilder: (context, index) {
                final newsdata = data?[index];
                return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              NewsDetailPage(news: newsdata!))),
                  child: NewsTemplate(
                    newsTitle: data?[index].newsTitle,
                    photo: data?[index].photo,
                    date: data?[index].created,
                    file : data?[index].file,
                  ),
                );
              },
            );
          }
          ),
    );
  }
}

class NewsTemplate extends StatelessWidget {
  String? newsTitle;
  String? photo;
  String? date;
  String? file;


  NewsTemplate({
    required this.newsTitle,
    required this.photo,
    required this.date,
    required this.file,
  });

  @override
  Widget build(BuildContext context) {

    print(photo.toString());
    return Container(
      margin: const EdgeInsets.all(16),
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
                        date.toString(),
                        style: Theme.of(context).textTheme.bodyText2,
                      )
                    ],
                  ).py4().px12(),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                newsTitle.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Container(
            //   height: 200.0,
            //   width: 500.0,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(8),
            //     image: DecorationImage(
            //       image: NetworkImage("http://127.0.0.1:8000" + photo.toString()),
            //       fit: BoxFit.fitWidth,
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text(
            //     airline[0].slogan.toString(),
            //     style: const TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 15.0,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}