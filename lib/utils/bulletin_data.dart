import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../pages/newsbulletin_pages/bulletin.dart';

import 'package:http/http.dart' as http;
import 'package:ioe_app/model/newsmodel.dart';

class FetchBulletinList {
  var data = [];
  List<BulletinModel> results = [];
  String urlList = 'http://127.0.0.1:8000/IOEbulletin/';

  Future<List<BulletinModel>> getbulletin() async {
    var url = Uri.parse(urlList);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        data = json.decode(response.body);
        results = data.map((e) => BulletinModel.fromJson(e)).toList();
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

class BulletinHaru extends StatefulWidget {
  const BulletinHaru({Key? key}) : super(key: key);

  @override
  State<BulletinHaru> createState() => _BulletinHaruState();
}

class _BulletinHaruState extends State<BulletinHaru> {
  FetchBulletinList _fetchBulletinList = FetchBulletinList();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<BulletinModel>>(
          future: _fetchBulletinList.getbulletin(),
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
                final bulletindata = data?[index];
                return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              BulletinDetailPage(bulletin: bulletindata!))),
                  child: NewsTemplate(
                    bulletinTitle: data?[index].bulletinTitle,
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
  String? bulletinTitle;
  String? photo;
  String? date;
  String? file;


  NewsTemplate({
    required this.bulletinTitle,
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
                bulletinTitle.toString(),
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