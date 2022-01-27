import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PartnershipPage extends StatelessWidget {
  const PartnershipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
        body: Material(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Partnership",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
