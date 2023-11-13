import 'package:flutter/material.dart';

class bagScreen extends StatefulWidget {
  const bagScreen({super.key});

  @override
  State<bagScreen> createState() => _bagScreenState();
}

class _bagScreenState extends State<bagScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 213, 218, 223),
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(110),
              child: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                titleSpacing: 0,
                title: const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bag',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(48),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        child: const Image(
                          image: AssetImage('assets/bag.jpg'),
                          width: double.infinity,
                          height: 60,
                        ),
                      )),
                    ],
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_outlined),
                    color: Colors.black,
                  )
                ],
              ),
            )));
  }
}
