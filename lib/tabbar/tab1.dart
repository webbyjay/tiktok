import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  const Tab1({super.key});

  @override
  State<Tab1> createState() => _tab1State();
}

class _tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisSpacing: 7,
        mainAxisSpacing: 4,
        crossAxisCount: 3,
        children: [
          Card(
            color: const Color.fromARGB(255, 0, 7, 212),
          ),
          Card(
            color: Colors.cyan,
          ),
          Card(
            color: Colors.yellowAccent,
          ),
          Card(
            color: Colors.deepOrange,
          ),
          Card(
            color: Colors.red,
          ),
          Card(
            color: Colors.yellow,
          ),
          Card(
            color: Colors.purpleAccent,
          ),
          Card(
            color: Colors.indigo,
          ),
          Card(
            color: Colors.black,
          ),
          Card(
            color: Colors.pinkAccent,
          ),
        ],
      ),
    );
  }
}
