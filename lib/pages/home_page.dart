import 'package:flutter/material.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:ionicons/ionicons.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Material(
      color: context.canvasColor,
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              Theme.of(context).brightness == Brightness.dark
                  ? "assets/images/logo_dark.png"
                  : "assets/images/logo_light.png",
              fit: BoxFit.cover,
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     height: 120,
          //     decoration: const BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage('assets/images/ioe_app.png'),
          //         fit: BoxFit.fitHeight,
          //         alignment: Alignment.topLeft,
          //       ),
          //       // shape: BoxShape.circle,
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(24.0),
          //   child: Align(
          //     alignment: Alignment.topLeft,
          //     child: Text(
          //       "IOE App",
          //       style: Theme.of(context).textTheme.headline1,
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 50,
          ),

          Flexible(
              child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 25,
            mainAxisSpacing: 25,
            childAspectRatio: 2 / 1,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.ioeRoute);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Ionicons.information_circle, size: 30,
                        // color: context.accentColor,
                      ),
                      Text('About IOE', style: context.textTheme.headline5),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: context.cardColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 117, 116, 116),
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.programRoute);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Ionicons.book,
                        size: 30,
                      ),
                      Text(
                        'Programs',
                        style: context.textTheme.headline5,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: context.cardColor,
                      boxShadow: const [
                        BoxShadow(
                          // color: Color.fromARGB(255, 117, 116, 116),
                          color: Color.fromARGB(255, 117, 116, 116),

                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.collegeRoute);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FontAwesomeIcons.university,
                      ),
                      Text(
                        'Colleges',
                        style: context.textTheme.headline5,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: context.cardColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 117, 116, 116),
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.admissionRoute);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Ionicons.today,
                        size: 30,
                      ),
                      Text(
                        'Admission',
                        style: context.textTheme.headline5,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: context.cardColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 117, 116, 116),
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.researchRoute);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FontAwesomeIcons.searchengin,
                      ),
                      Text(
                        'Research',
                        style: context.textTheme.headline5,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: context.cardColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 117, 116, 116),
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.partnershipRoute);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(FontAwesomeIcons.solidHandshake),
                      Text(
                        'Partnership',
                        style: context.textTheme.headline5,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: context.cardColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 117, 116, 116),
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.resultcheckRoute);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(FontAwesomeIcons.solidNewspaper),
                      Text('Results', style: context.textTheme.headline5),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: context.cardColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 117, 116, 116),
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.calenderRoute);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(FontAwesomeIcons.calendarAlt),
                      Text(
                        'Calender',
                        style: context.textTheme.headline5,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: context.cardColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 117, 116, 116),
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
            ],
          ))
        ],
      ),
    ));
  }
}
