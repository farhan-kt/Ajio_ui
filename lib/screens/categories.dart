import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final List<String> images = [
    'assets/catmen-removebg-preview.png',
    'assets/catwomen-removebg-preview.png',
    'assets/catkid-removebg-preview.png',
    'assets/catjewellery-removebg-preview.png',
    'assets/cathome-removebg-preview.png',
    'assets/catbeauty-removebg-preview.png',
    'assets/cataccessory-removebg-preview.png',
    'assets/catgift-removebg-preview.png',
  ];

  final List<String> Name = [
    'Men',
    'Women',
    'Kids',
    'Jewellery',
    'Home & Lifestyle',
    'Beauty by Tira',
    'Accessories',
    'Gifting Guide',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          title: const Text(
            'Shop By Category',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline),
                color: Colors.black),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_bag_outlined),
                color: Colors.black)
          ],
        ),
        body: Container(
          color: Colors.grey[300],
          child: Stack(
            children: [
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 1.5,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    color: const Color.fromARGB(255, 242, 241, 226),
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Text(
                          Name[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset(
                          images[index],
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                  );
                },
                itemCount: images.length,
              ),
              const SizedBox(
                height: 8,
              ),
              Positioned(
                bottom: -5,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/catbottom.jpg',
                    width: 380,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
