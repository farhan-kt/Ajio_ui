import 'package:flutter/material.dart';

class wishScreen extends StatefulWidget {
  const wishScreen({super.key});

  @override
  State<wishScreen> createState() => _wishScreenState();
}

class _wishScreenState extends State<wishScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag_outlined),
              color: Colors.black)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/wishlist.jpg',
                        width: 150,
                      ),
                      const Text("NETPLAY"),
                      const Text(
                        "Regular Fit Short-Sleeve",
                        style: TextStyle(
                            color: Color.fromARGB(255, 185, 184, 184),
                            fontSize: 12),
                      ),
                      const Row(
                        children: [
                          Text(
                            "₹ 320 ",
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            " ₹ 799 ",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Color.fromARGB(255, 185, 184, 184),
                                fontSize: 12),
                          ),
                          Text(
                            "60% off",
                            style: TextStyle(
                                color: Color.fromARGB(255, 185, 184, 184),
                                fontSize: 12),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: const BorderSide(color: Colors.black),
                            ),
                            onPressed: () {},
                            child: const Icon(
                              Icons.delete_outline,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          ElevatedButton(
                              style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color.fromARGB(255, 50, 47, 47))),
                              onPressed: () {},
                              child: const Row(
                                children: [
                                  Icon(Icons.shopping_bag_outlined),
                                  Text("Add to Bag")
                                ],
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
