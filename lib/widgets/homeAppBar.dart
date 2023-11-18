import 'package:ajio_app/screens/bag.dart';
import 'package:ajio_app/screens/notification.dart';
import 'package:ajio_app/screens/wishlist.dart';
import 'package:ajio_app/widgets/tabBar.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget buildAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(100),
    child: DefaultTabController(
      length: 10,
      child: AppBar(
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
                        hintText: 'Search by product, brand...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  )
                ],
              ),
            ),
          ],
        ),
        bottom: CustomTabBar(context),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotifiScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 3),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const wishScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 3),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const bagScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}
