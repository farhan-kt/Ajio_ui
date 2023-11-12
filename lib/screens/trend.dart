import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TrndinScreen extends StatefulWidget {
  const TrndinScreen({super.key});

  @override
  State<TrndinScreen> createState() => _TrndinScreenState();
}

class _TrndinScreenState extends State<TrndinScreen> {
  int activeindex = 0;
  final carsoueltrend1 = [
    'assets/trendslider1.jpg',
    'assets/trendslider2.jpg',
    'assets/trendslider3.jpg',
  ];

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
                      color: Colors.grey[200],
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
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      child: const Image(
                        image: AssetImage('assets/trendhead.jpg'),
                        width: double.infinity,
                      ),
                    ),
                    CarouselSlider.builder(
                      itemCount: carsoueltrend1.length,
                      itemBuilder: (context, index, realIndex) {
                        final imagepath = carsoueltrend1[index];
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Image(
                            image: AssetImage(imagepath),
                            fit: BoxFit.cover,
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
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        pauseAutoPlayOnTouch: true,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeindex = index;
                          });
                        },
                      ),
                    ),
                    Container(
                      child: const Image(
                        image: AssetImage('assets/trendstyle.jpg'),
                        width: double.infinity,
                        height: 100,
                      ),
                    ),
                    Container(
                      child: const Image(
                        image: AssetImage('assets/trendimg1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      child: const Image(
                        image: AssetImage('assets/lasttrendbar.jpg'),
                        height: 80,
                        width: double.infinity,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 300,
                      child: const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Image(image: AssetImage("assets/trendscroll1.jpg")),
                            Image(image: AssetImage("assets/trendscroll2.jpg")),
                            Image(image: AssetImage("assets/trendscroll3.jpg")),
                          ],
                        ),
                      ),
                    ),
                    const Image(
                      image: AssetImage('assets/trendcommunitybar.jpg'),
                      height: 100,
                      width: double.infinity,
                    ),
                    const SizedBox(
                      height: 350,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage("assets/trendscroll4.jpg"),
                              height: 340,
                            ),
                            Image(
                              image: AssetImage("assets/trendscroll5.jpg"),
                              height: 350,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: const Image(
                        image: AssetImage('assets/trendbrandbar.jpg'),
                        height: 80,
                        width: double.infinity,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 300,
                      child: const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Image(image: AssetImage("assets/trendscroll6.jpg")),
                            Image(image: AssetImage("assets/trendscroll7.jpg")),
                            Image(image: AssetImage("assets/trendscroll6.jpg")),
                            Image(image: AssetImage("assets/trendscroll7.jpg")),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 300,
                            width: 200,
                            child: Column(
                              children: [
                                Container(
                                  child: const Image(
                                    image:
                                        AssetImage('assets/trendscroll2.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Text('G STAR RAW',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    )),
                                const Text('Rovic Zip 3D Tapered..'),
                                const Text('₹22,999')
                              ],
                            ),
                          ),
                          Container(
                            height: 300,
                            width: 200,
                            child: Column(
                              children: [
                                Container(
                                  child: const Image(
                                    image:
                                        AssetImage('assets/trendscroll1.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Text('REPLAY',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    )),
                                const Text('JAAN Slim Fit Hyperfle..'),
                                const Text('17,999')
                              ],
                            ),
                          ),
                          Container(
                            height: 300,
                            width: 200,
                            child: Column(
                              children: [
                                Container(
                                  child: const Image(
                                    image:
                                        AssetImage('assets/trendscroll3.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Text('SCOTCH & SODA',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    )),
                                const Text('Stuart Slim Fit Washe..'),
                                const Text('₹14,999')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: const Image(
                        image: AssetImage('assets/trendbottombar.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
