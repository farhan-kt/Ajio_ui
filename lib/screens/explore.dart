import 'package:ajio_app/screens/bag.dart';
import 'package:ajio_app/screens/notification.dart';
import 'package:ajio_app/screens/wishlist.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int activeindex = 0;
  final carsouelexplore1 = [
    'assets/expslider1.jpg',
    'assets/expslider2.jpg',
    'assets/expslider3.jpg',
  ];

  final carsouelexplore2 = [
    'assets/lasthome.jpg',
    'assets/expaxorte.jpg',
    'assets/expgap.jpg',
  ];

  final carsouelexplore3 = [
    'assets/expslider5.jpg',
    'assets/expslider6.jpg',
    'assets/expslider7.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotifiScreen()));
              },
              icon: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
              )),
          const SizedBox(width: 3),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const wishScreen()));
              },
              icon: const Icon(Icons.favorite_border_outlined,
                  color: Colors.black)),
          const SizedBox(width: 3),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const bagScreen()));
              },
              icon:
                  const Icon(Icons.shopping_bag_outlined, color: Colors.black)),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 130,
              width: double.infinity,
              child: Image(image: AssetImage("assets/explorehead.jpg")),
            ),
            CarouselSlider.builder(
              itemCount: carsouelexplore1.length,
              itemBuilder: (context, index, realIndex) {
                final imagepath = carsouelexplore1[index];
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage(imagepath),
                    width: double.infinity,
                  ),
                );
              },
              options: CarouselOptions(
                height: 300,
                autoPlay: true,
                viewportFraction: 1,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
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
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: const Image(
                image: AssetImage('assets/exp2.jpg'),
                height: 90,
                width: double.infinity,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/expgrid1.jpg',
                        height: 180,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/expgrid2.jpg',
                                height: 90,
                              ),
                              Image.asset(
                                'assets/expgrid3.jpg',
                                height: 95,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/expgrid4.jpg',
                            height: 86,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Image.asset(
                            'assets/expgrid5.jpg',
                            height: 87,
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/expgrid6.jpg',
                      height: 180,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/expgrid7.jpg',
                        height: 180,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/expgrid8.jpg',
                                height: 85,
                              ),
                              SizedBox(height: 5),
                              Image.asset(
                                'assets/expgrid9.jpg',
                                height: 90,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            CarouselSlider.builder(
              itemCount: carsouelexplore2.length,
              itemBuilder: (context, index, realIndex) {
                final imagepath = carsouelexplore2[index];
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage(imagepath),
                    width: double.infinity,
                  ),
                );
              },
              options: CarouselOptions(
                height: 150,
                autoPlay: true,
                viewportFraction: 1,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
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
              height: 8,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Image(
                image: AssetImage('assets/expgearup.jpg'),
                height: 100,
                width: double.infinity,
              ),
            ),
            CarouselSlider.builder(
              itemCount: carsouelexplore3.length,
              itemBuilder: (context, index, realIndex) {
                final imagepath = carsouelexplore3[index];
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage(imagepath),
                    width: double.infinity,
                  ),
                );
              },
              options: CarouselOptions(
                height: 300,
                autoPlay: true,
                viewportFraction: 1,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                pauseAutoPlayOnTouch: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeindex = index;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
