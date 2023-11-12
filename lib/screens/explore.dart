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
            Container(
              color: Colors.amber[100],
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: AssetImage("assets/expimage2.png"),
                    height: 150,
                    width: 300,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 11),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/expimage4.jpg"),
                          height: 100,
                          width: 100,
                        ),
                        Image(
                          image: AssetImage("assets/expimage4.jpg"),
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.amber[100],
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 11),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/expimage3.jpg"),
                          height: 100,
                          width: 100,
                        ),
                        Image(
                          image: AssetImage("assets/expimage9.jpg"),
                          height: 80,
                          width: 150,
                        ),
                      ],
                    ),
                  ),
                  Image(
                    image: AssetImage("assets/expimage8.jpg"),
                    height: 150,
                    width: 250,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.amber[100],
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: AssetImage("assets/expimage5.jpg"),
                    height: 150,
                    width: 300,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 11),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/expimage6.jpg"),
                          height: 100,
                          width: 100,
                        ),
                        Image(
                          image: AssetImage("assets/expimage10.jpg"),
                          height: 80,
                          width: 100,
                        ),
                      ],
                    ),
                  )
                ],
              ),
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
