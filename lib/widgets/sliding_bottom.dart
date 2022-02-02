// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:sliding_sheet/sliding_sheet.dart';
// import 'package:velocity_x/src/extensions/context_ext.dart';

// Widget showSheet() {
//   return SlidingSheet(
//     cornerRadius: 16,
//     // avoidStatusBar: true,
//     snapSpec: const SnapSpec(
//       // initialSnap: 1,
//       snappings: [0.4, 1],
//     ),
//     builder: buildSheet,
//     headerBuilder: buildHeader,
//   );
// }

// Widget buildSheet(BuildContext context, SheetState state) => Material(
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: const [
//             Text(
//                 "What is Lorem Ipsum?Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Why do we use it?t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
//             SizedBox(height: 50),
//             Text("hellp")
//           ],
//         ),
//       ),
//     );

// Widget buildHeader(BuildContext context, SheetState state) => Material(
//         child: Container(
//       color: context.canvasColor,
//       width: double.infinity,
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Container(
//               height: 8,
//               width: 100,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: context.accentColor),
//             ),
//           ],
//         ),
//       ),
//     ));
