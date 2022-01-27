import 'package:flutter/material.dart';
import 'package:ioe_app/utils/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Material(
      color: Colors.indigo.shade900,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              "assets/images/logo_with_text.png",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "IOE App",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
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
                    children: const [
                      Icon(Icons.info_outline_rounded, color: Colors.white),
                      Text('About IOE',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade800,
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
                    children: const [
                      Icon(Icons.event, color: Colors.white),
                      Text('Programs',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade800,
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
                    children: const [
                      Icon(
                        Icons.school,
                        color: Colors.white,
                      ),
                      Text('Colleges',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade800,
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
                    children: const [
                      Icon(Icons.collections_bookmark_rounded,
                          color: Colors.white),
                      Text('Admission',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade800,
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
                    children: const [
                      Icon(Icons.person_search_outlined, color: Colors.white),
                      Text('Research',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade800,
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
                    children: const [
                      Icon(Icons.insert_link, color: Colors.white),
                      Text('Partnership',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade800,
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
                    children: const [
                      Icon(Icons.menu_book, color: Colors.white),
                      Text('News And Bulletin',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade800,
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
                    children: const [
                      Icon(Icons.add_comment_outlined, color: Colors.white),
                      Text('Extras',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade800,
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
