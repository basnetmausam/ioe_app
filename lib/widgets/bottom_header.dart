import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

Widget buildHeader(BuildContext context, SheetState state) => Material(
        child: Container(
      color: context.canvasColor,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 8,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: context.accentColor),
            ),
          ],
        ),
      ),
    ));
