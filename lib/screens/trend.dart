import 'package:flutter/material.dart';

class TrndinScreen extends StatefulWidget {
  const TrndinScreen({super.key});

  @override
  State<TrndinScreen> createState() => _TrndinScreenState();
}

class _TrndinScreenState extends State<TrndinScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 10,
            child: Scaffold(
              appBar: AppBar(
                elevation: 10,
                backgroundColor: Colors.white,
                title: Column(
                  children: [
                    Container(
                      color: const Color.fromARGB(13, 8, 3, 3),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          const Image(
                            image: AssetImage('assets/ajio.png'),
                            width: 40,
                            height: 40,
                          ),
                          const SizedBox(width: 5),
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search by product,brand...',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.black,
                              )),
                          const SizedBox(
                            width: 8,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.black,
                      )),
                  const SizedBox(width: 3),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border_outlined,
                          color: Colors.black)),
                  const SizedBox(width: 3),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_bag_outlined,
                          color: Colors.black)),
                ],
              ),
            )));
  }
}
