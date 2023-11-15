import 'package:ajio_app/screens/bag.dart';
import 'package:ajio_app/screens/notification.dart';
import 'package:ajio_app/screens/wishlist.dart';
import 'package:ajio_app/widgets/tabBar.dart';
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
              bottom: CustomTabBar(),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const bagScreen()));
                    },
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
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/RuPay.jpg',
                              height: 80,
                            ),
                            Image.asset(
                              'assets/sbi.jpg',
                              height: 80,
                            ),
                            Image.asset(
                              'assets/yesbank.jpg',
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
                          children: [
                            const Image(
                                image: AssetImage("assets/homewinter1.jpg")),
                            const SizedBox(
                              width: 6,
                            ),
                            const Image(
                                image: AssetImage("assets/homewinter2.jpg")),
                            const SizedBox(
                              width: 6,
                            ),
                            const Image(
                                image: AssetImage("assets/homewinter3.jpg")),
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
