import 'package:ajio_app/widgets/homeAppBar.dart';
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

  final carsouelhome2 = [
    'assets/homeslider1.jpg',
    'assets/homeslider2.jpg',
    'assets/homeslider3.jpg',
    'assets/homeslider4.jpg',
  ];

  final carouselImage2 = ['assets/slider1.jpg', 'assets/slider2.jpg'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(context),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider.builder(
                  itemCount: carsouelImage1.length,
                  itemBuilder: (context, index, realIndex) {
                    final imagepath = carsouelImage1[index];
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child:
                          Image(image: AssetImage(imagepath), fit: BoxFit.fill),
                    );
                  },
                  options: CarouselOptions(
                    height: 330,
                    autoPlay: true,
                    viewportFraction: 1,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeindex = index;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/order.jpg',
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (final imagePath in [
                              'assets/RuPay.jpg',
                              'assets/sbi.jpg',
                              'assets/yesbank.jpg'
                            ])
                              Image.asset(
                                imagePath,
                                height: 80,
                              ),
                          ],
                        ),
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
                      Image.asset('assets/hurry.png',
                          height: 80, width: double.infinity),
                      Container(
                        width: double.infinity,
                        height: 160,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(image: AssetImage("assets/h4.png")),
                            Image(image: AssetImage("assets/h2.png")),
                            Image(image: AssetImage("assets/h3.png")),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 160,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(image: AssetImage("assets/h3.png")),
                            Image(
                              image: AssetImage("assets/h2.png"),
                            ),
                            Image(image: AssetImage("assets/h4.png")),
                          ],
                        ),
                      ),
                      const Image(
                        image: AssetImage("assets/homewinterbar.jpg"),
                        width: double.infinity,
                        height: 80,
                      ),
                      Container(
                        height: 250,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            Image(image: AssetImage("assets/homewinter1.jpg")),
                            SizedBox(
                              width: 6,
                            ),
                            Image(image: AssetImage("assets/homewinter2.jpg")),
                            SizedBox(
                              width: 6,
                            ),
                            Image(image: AssetImage("assets/homewinter3.jpg")),
                          ],
                        ),
                      ),
                      CarouselSlider.builder(
                        itemCount: carsouelhome2.length,
                        itemBuilder: (context, index, realIndex) {
                          final imagepath = carsouelhome2[index];
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
                      const Image(
                        image: AssetImage("assets/beat.jpg"),
                        width: double.infinity,
                        height: 90,
                      ),
                    ],
                  )),
              Container(
                width: double.infinity,
                height: 230,
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/h2.png")),
                      Image(
                        image: AssetImage("assets/h5.jpg"),
                        height: 210,
                      ),
                      Image(image: AssetImage("assets/h4.png")),
                      Image(image: AssetImage("assets/h3.png")),
                      Image(image: AssetImage("assets/h2.png"))
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.amber[100],
                width: double.infinity,
                height: 60,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(image: AssetImage("assets/lasthome.jpg")),
                    Image(image: AssetImage("assets/lasthome.jpg"))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
