import 'package:flutter/material.dart';
import 'package:ioe_app/model/newsmodel.dart';
import 'package:velocity_x/velocity_x.dart';

class NewsDetailPage extends StatelessWidget {
  final NewsModel news;

  const NewsDetailPage({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        child: Hero(
          tag: 404,
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(),
                    child: Image.asset("assets/images/sammy.png"),
                  ),
                ),
                20.heightBox,
                news.description.text.bold.make().px16(),
                10.heightBox,
                ElevatedButton(onPressed: () {}, child: Text("Read More"))
              ],
            ).py20(),
          ),
        ),
      ),
    );
  }
}
