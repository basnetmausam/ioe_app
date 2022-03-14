import 'package:flutter/material.dart';

import '../../utils/homeDrawer.dart';
import '../../utils/newsdata.dart';

class IOeMonthlyPage extends StatelessWidget {
  const IOeMonthlyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "IOE Monthly Bulletin",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      drawer: myDrawer(context),
      body: NewsHaru(),
    );
  }
}
