import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String _title = 'IOE App';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
            Center(
              child: _widgetOptions.elementAt(_selectedIndex),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo.shade900,
        unselectedItemColor: Colors.grey.shade600,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'Notices',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_off_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
