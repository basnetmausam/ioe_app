import 'package:flutter/material.dart';
import 'package:nepali_utils/nepali_utils.dart';

import 'package:velocity_x/velocity_x.dart';

import '../../utils/homeDrawer.dart';
import 'calendar_event.dart';
import 'calendar_event2.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: context.accentColor,
          title: Text(
            "IOE Calender",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          centerTitle: true,
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'BE/B.Arch Calendar'),
              Tab(text: 'MSC Calendar'),
            ],
          ),
          actions: [
            IconButton(
              icon: Text(
                NepaliUtils().language == Language.english ? 'ने' : 'En',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Colors.white),
              ),
              onPressed: () {
                NepaliUtils().language =
                    NepaliUtils().language == Language.english
                        ? Language.nepali
                        : Language.english;
                setState(() {});
              },
            ),
          ],
        ),
        backgroundColor: context.canvasColor,
        drawer: myDrawer(context),
        body: TabBarView(
          children: [
            CalendarBEWidget(),
            CalendarMSCWidget(),
          ],
        ),
      ),
    );
  }
}
