import 'package:flutter/material.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    void ontap(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 650),
        child: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(20, 20, 20, 1),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                  color: Color.fromARGB(255, 41, 48, 173), Icons.pie_chart),
              label: '',
              backgroundColor: Color.fromRGBO(33, 33, 175, 1),
            ),
            BottomNavigationBarItem(
              icon: Icon(color: Color.fromARGB(255, 113, 185, 24), Icons.feed),
              label: '',
              backgroundColor: Color.fromARGB(255, 27, 168, 12),
            ),
            BottomNavigationBarItem(
              icon: Icon(color: Color.fromARGB(255, 206, 19, 19), Icons.feed),
              label: '',
              backgroundColor: Color.fromRGBO(211, 21, 21, 1),
            ),
          ],
          selectedItemColor: Colors.amber[800],
          currentIndex: _selectedIndex,
          onTap: ontap,
        ),
      ),
    );
  }
}
