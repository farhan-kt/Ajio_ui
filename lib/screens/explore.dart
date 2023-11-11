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
    'assets/expslider4.PNG'
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
            SizedBox(
              child: Image(image: AssetImage("assets/explorehead.jpg")),
              height: 80,
              width: double.infinity,
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
                height: 250,
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
              child: Image(
                image: AssetImage('assets/exp2.jpg'),
                height: 80,
                width: double.infinity,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
