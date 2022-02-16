import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:ioe_app/model/newsmodel.dart';
import 'package:velocity_x/velocity_x.dart';

import '../pages/newsbulletin_pages/news.dart';

class NewsHaru extends StatefulWidget {
  const NewsHaru({Key? key}) : super(key: key);

  @override
  _NewsHaruState createState() => _NewsHaruState();
}

class _NewsHaruState extends State<NewsHaru> {
  int currentPage = 0;

  late int totalPages;

  List<NewsModel> news = <NewsModel>[];

  final RefreshController refreshController =
      RefreshController(initialRefresh: true);

  Future<bool> getNews({bool isRefresh = false}) async {
    if (isRefresh) {
      currentPage = 0;
    } else {
      if (currentPage >= totalPages) {
        refreshController.loadNoData();
        return false;
      }
    }

    final Uri uri = Uri.parse(
        "https://api.instantwebtools.net/v1/passenger?page=$currentPage&size=15");

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      if (isRefresh) {
        news.clear();
        jsonData['data'].forEach((element) {
          if (element["name"] != null && element['trips'] != null) {
            NewsModel newsmodel = NewsModel(
              name: element['name'],
              trips: element['trips'],
            );
            news.add(newsmodel);
          }
        });
      } else {
        jsonData['data'].forEach((element) {
          if (element["name"] != null && element['trips'] != null) {
            NewsModel newsmodel = NewsModel(
              name: element['name'],
              trips: element['trips'],
            );
            news.add(newsmodel);
          }
        });
      }

      currentPage++;

      totalPages = jsonData['totalPages'];

      // print(response.body);
      setState(() {});
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmartRefresher(
        controller: refreshController,
        enablePullUp: true,
        onRefresh: () async {
          final result = await getNews(isRefresh: true);
          if (result) {
            refreshController.refreshCompleted();
          } else {
            refreshController.refreshFailed();
          }
        },
        onLoading: () async {
          final result = await getNews();
          if (result) {
            refreshController.loadComplete();
          } else {
            refreshController.loadFailed();
          }
        },
        child: ListView.builder(
          itemCount: news.length,
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true, // add this otherwise an error
          itemBuilder: (context, index) {
            final newsdata = news[index];
            return InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NewsDetailPage(news: newsdata))),
              child: NewsTemplate(
                trips: news[index].trips,
                name: news[index].name,
              ),
            );
          },
        ),
      ),
    );
  }
}

class NewsTemplate extends StatelessWidget {
  String name;
  int trips;
  NewsTemplate({
    required this.trips,
    required this.name,
    // required this.airline,
  });

  @override
  Widget build(BuildContext context) {
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
                        "2022/02/19",
                        style: Theme.of(context).textTheme.bodyText2,
                      )
                    ],
                  ).py4().px12(),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
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
    );
  }
}
