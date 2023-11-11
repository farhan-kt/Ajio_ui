import 'package:ajio_app/tabs/tabBar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeindex = 0;
  final carsouelImage1 = [
    'assets/IMG1.PNG',
    'assets/IMG_2.PNG',
    'assets/IMG_3.PNG',
    'assets/IMG_4.PNG',
  ];

  final carouselImage2 = ['assets/slider1.jpg', 'assets/slider2.jpg'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
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
              bottom: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.black,
                  tabs: [
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
              // bottom: CustomTabBar(),
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
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CarouselSlider.builder(
                itemCount: carsouelImage1.length,
                itemBuilder: (context, index, realIndex) {
                  final imagepath = carsouelImage1[index];
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image(
                      image: AssetImage(imagepath),
                      width: double.infinity,
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 250,
                  autoPlay: true,
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  pauseAutoPlayOnTouch: true,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeindex = index;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Image.asset('assets/order.jpg'),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/RuPay.jpg',
                        height: 80,
                        width: double.infinity,
                      ),
                      CarouselSlider.builder(
                        itemCount: carouselImage2.length,
                        itemBuilder: (context, index, realIndex) {
                          final imagepath = carouselImage2[index];
                          return SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Image(
                                image: AssetImage(imagepath),
                                width: double.infinity,
                              ));
                        },
                        options: CarouselOptions(
                          height: 100,
                          autoPlay: true,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeindex = index;
                            });
                          },
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
