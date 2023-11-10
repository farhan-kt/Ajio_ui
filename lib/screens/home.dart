import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          elevation: 10,
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Container(
                color: Color.fromARGB(13, 8, 3, 3),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Image(
                      image: AssetImage('assets/ajio.png'),
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search by product,brand...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.black,
                        )),
                    SizedBox(
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
                icon: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.black,
                )),
            SizedBox(width: 3),
            IconButton(
                onPressed: () {},
                icon:
                    Icon(Icons.favorite_border_outlined, color: Colors.black)),
            SizedBox(width: 3),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_bag_outlined, color: Colors.black)),
          ],
        ),
      ),
      body: Container(
        child: Center(child: Text('Home')),
      ),
    ));
  }
}
