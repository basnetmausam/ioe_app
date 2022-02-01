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
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Image.asset(img),
          Center(
            child: Text(
              text,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Text(
            text1,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    ),
  );
}
