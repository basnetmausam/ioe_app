import 'package:flutter/material.dart';

import 'Graduate page/M.SC. IN CLIMATE CHANGE AND DEVELOPMENT.dart';

Widget programBoxes(
  BuildContext context, {
  required init,
  required min,
  required max,
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
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) {
          return makeDismissable(
            context,
            child: DraggableScrollableSheet(
              initialChildSize: init,
              minChildSize: min,
              maxChildSize: max,
              builder: (_, controller) => Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                child: ListView(
                  controller: controller,
                  children: [
                    // Center(
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(5.0),
                    //     child: Text(
                    //       text,
                    //       style: Theme.of(context).textTheme.headline3,
                    //     ),
                    //   ),
                    // ),

                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0)),
                      child: Image.asset(img),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        text1,
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
    title: Text(text),
  ));
}
