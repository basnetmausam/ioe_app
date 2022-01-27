import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ResearchPage extends StatelessWidget {
  const ResearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
        body: Material(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Research",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
