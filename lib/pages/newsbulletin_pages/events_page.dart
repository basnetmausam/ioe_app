import 'package:flutter/material.dart';

import '../../utils/homeDrawer.dart';
import '../../utils/newsdata.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Events",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      drawer: myDrawer(context),
      body: NewsHaru(),
    );
  }
}
