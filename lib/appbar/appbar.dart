import 'package:flutter/material.dart';

class Tab extends StatefulWidget {
  const Tab({super.key});

  @override
  State<Tab> createState() => _TabState();
}

class _TabState extends State<Tab> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CircleAvatar(
        radius: 15,
        backgroundColor: Colors.black,
        backgroundImage: AssetImage("assets/ajio.png"),
      ),
      SizedBox(width: 5),
      Text(
        'Sale',
        style: TextStyle(color: Colors.black),
      )
    ]);
  }
}
