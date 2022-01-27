import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Material(
      color: context.canvasColor,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Notices",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
