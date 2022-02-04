import 'package:flutter/material.dart';

Widget programBoxes(
  BuildContext context, {
  required String img,
  required String text,
  required String text1,
  VoidCallback? onClicked,
}) {
  final color = Colors.white;
  final hoverColar = Colors.black26;
  return Card(
      child: ListTile(
    onTap: () => showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        context: context,
        builder: (BuildContext context) {
          return ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  text1,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          );
        }),
    title: Text(text),
  ));
}
