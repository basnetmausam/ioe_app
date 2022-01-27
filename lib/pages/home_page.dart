import 'package:flutter/material.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

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
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              "assets/images/logo_with_text.png",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "IOE App",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          // const SizedBox(
          //   height: 20,
          // ),
          Flexible(
              child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(16),
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 4 / 2,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.ioeRoute);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
<<<<<<< HEAD
                    children: const [
                      Icon(Icons.info_outline_rounded, color: Colors.white),
                      Text('About IOE',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
=======
                    children: [
                      const Icon(Icons.school_outlined),
                      Text('About IOE', style: context.textTheme.bodyText1),
>>>>>>> 2736e1bc44f2d9fffcd93536a1c6dc99b75b07dc
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: context.cardColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.programRoute);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
<<<<<<< HEAD
                    children: const [
                      Icon(Icons.event, color: Colors.white),
                      Text('Programs',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
=======
                    children: [
                      const Icon(Icons.air_outlined),
                      Text(
                        'Programs',
                        style: context.textTheme.bodyText1,
                      ),
>>>>>>> 2736e1bc44f2d9fffcd93536a1c6dc99b75b07dc
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: context.cardColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.collegeRoute);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
<<<<<<< HEAD
                    children: const [
                      Icon(
                        Icons.school,
                        color: Colors.white,
=======
                    children: [
                      const Icon(
                        Icons.hd_outlined,
>>>>>>> 2736e1bc44f2d9fffcd93536a1c6dc99b75b07dc
                      ),
                      Text(
                        'Colleges',
                        style: context.textTheme.bodyText1,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: context.cardColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.admissionRoute);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
<<<<<<< HEAD
                    children: const [
                      Icon(Icons.collections_bookmark_rounded,
                          color: Colors.white),
                      Text('Admission',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
=======
                    children: [
                      const Icon(Icons.outlet_outlined),
                      Text(
                        'Admission',
                        style: context.textTheme.bodyText1,
                      ),
>>>>>>> 2736e1bc44f2d9fffcd93536a1c6dc99b75b07dc
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: context.cardColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.researchRoute);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
<<<<<<< HEAD
                    children: const [
                      Icon(Icons.person_search_outlined, color: Colors.white),
                      Text('Research',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
=======
                    children: [
                      const Icon(
                        Icons.outlined_flag,
                      ),
                      Text(
                        'Research',
                        style: context.textTheme.bodyText1,
                      ),
>>>>>>> 2736e1bc44f2d9fffcd93536a1c6dc99b75b07dc
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: context.cardColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.partnershipRoute);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
<<<<<<< HEAD
                    children: const [
                      Icon(Icons.insert_link, color: Colors.white),
                      Text('Partnership',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
=======
                    children: [
                      const Icon(Icons.pie_chart_outline_rounded),
                      Text(
                        'Partnership',
                        style: context.textTheme.bodyText1,
                      ),
>>>>>>> 2736e1bc44f2d9fffcd93536a1c6dc99b75b07dc
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: context.cardColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.newsbulletinRoute);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
<<<<<<< HEAD
                    children: const [
                      Icon(Icons.menu_book, color: Colors.white),
                      Text('News And Bulletin',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
=======
                    children: [
                      const Icon(Icons.arrow_back_ios_new_sharp),
                      Text('News & Bulletin',
                          style: context.textTheme.bodyText1),
>>>>>>> 2736e1bc44f2d9fffcd93536a1c6dc99b75b07dc
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: context.cardColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.extrasRoute);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
<<<<<<< HEAD
                    children: const [
                      Icon(Icons.add_comment_outlined, color: Colors.white),
                      Text('Extras',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
=======
                    children: [
                      const Icon(Icons.mic_external_off_outlined),
                      Text(
                        'Extras',
                        style: context.textTheme.bodyText1,
                      ),
>>>>>>> 2736e1bc44f2d9fffcd93536a1c6dc99b75b07dc
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: context.cardColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ))
        ],
      ),
    ));
  }
}
