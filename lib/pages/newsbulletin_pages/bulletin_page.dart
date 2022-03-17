import 'package:flutter/material.dart';
import 'package:ioe_app/utils/bulletin_data.dart';

import '../../utils/homeDrawer.dart';

class BulletinPage extends StatelessWidget {
  const BulletinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      drawer: myDrawer(context),
      body: BulletinHaru(),
    );
  }
}