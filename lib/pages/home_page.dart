import 'package:flutter/material.dart';

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
          const Text(
            "IOE App",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
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
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('First',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
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
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Second',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
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
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Third',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
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
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Four',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
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
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Fifth',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
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
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Six',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
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
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Fifth',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
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
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Six',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
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
            ],
          ))
        ],
      ),
    ));
  }
}
