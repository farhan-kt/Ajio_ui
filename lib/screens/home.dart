import 'package:ajio_app/appbar/appbar.dart';
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
        child: DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
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
            bottom:
                TabBar(isScrollable: true, indicatorColor: Colors.black, tabs: [
              Tab(
                icon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.home_filled,
                      color: Colors.black,
                    )),
              ),
              const Tab(
                child: Row(children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvN86vCVk2TjEbIu-RPf8fg8u8wSTf86uuEA&usqp=CAU"),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Sale',
                    style: TextStyle(color: Colors.black),
                  )
                ]),
              ),
              const Tab(
                child: Row(children: [
                  CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.black,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1GPQzRwesRR1qkKezfukGoN2LoPN-jAEo-A&usqp=CAU")),
                  SizedBox(width: 5),
                  Text(
                    'Winterwear',
                    style: TextStyle(color: Colors.black),
                  )
                ]),
              ),
              const Tab(
                child: Row(children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBu5vG3bCtDg_jVLNvFWWicwEMXhHvNOZ4cw&usqp=CAU"),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Men',
                    style: TextStyle(color: Colors.black),
                  )
                ]),
              ),
              const Tab(
                child: Row(children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOAiRZnm7YjdxQhCScyX1ubwxvjRLv6jJ79Q&usqp=CAU"),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Women',
                    style: TextStyle(color: Colors.black),
                  )
                ]),
              ),
              const Tab(
                child: Row(children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRSmnZNL0tvlQREKIv7sbshoCTuvDxnIXp2Q&usqp=CAU"),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Kids',
                    style: TextStyle(color: Colors.black),
                  )
                ]),
              ),
              const Tab(
                child: Row(children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfuKNJNfukdS3qR0eLCtw8NTwm38IsSxn7yw&usqp=CAU"),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Jewellery',
                    style: TextStyle(color: Colors.black),
                  )
                ]),
              ),
              const Tab(
                child: Row(children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvsDlfpvFceIiODnAzsgnM5Xteqe1JaFajBQ&usqp=CAU"),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Beauty',
                    style: TextStyle(color: Colors.black),
                  )
                ]),
              ),
              const Tab(
                child: Row(children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaFbczhETJcu8OXd0U6DgGtXWhO5KNa1sVYg&usqp=CAU"),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Footwear',
                    style: TextStyle(color: Colors.black),
                  )
                ]),
              ),
              const Tab(
                child: Row(children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQFkBeTxrsEhBQLmrb_4i-81-pdInvmBdy0w&usqp=CAU"),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Accessories',
                    style: TextStyle(color: Colors.black),
                  )
                ]),
              ),
            ]),
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
        ),
        body: Container(
          child: const Center(child: Text('Home')),
        ),
      ),
    ));
  }
}
