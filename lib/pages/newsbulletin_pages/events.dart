import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../model/events_model.dart';
import '../../utils/homeDrawer.dart';

class EventsDetailPage extends StatelessWidget {
  final Datum news;

  const EventsDetailPage({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          news.airline[0].slogan.toString(),
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      drawer: myDrawer(context),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Container(
                  height: 200.0,
                  width: 500.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(news.airline[0].logo.toString()),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              20.heightBox,
              news.airline[0].name.text.make().px8(),
              news.airline[0].country.text.make().px8(),
              news.airline[0].slogan.text.make().px8(),
              news.airline[0].headQuaters.text.make().px8(),
              news.airline[0].website.text.make().px8(),
              news.trips.text.bold.make().px16(),
              10.heightBox,
              ElevatedButton(
                  onPressed: () async {
                    const url = 'https://flutterdevs.com/';
                    if (await canLaunch(url)) {
                      await launch(url,
                          forceSafariVC: true, forceWebView: true);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text("Read More"))
            ],
          ).py20(),
        ),
      ),
    );
  }
}
