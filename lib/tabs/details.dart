import 'package:flutter/material.dart';

class ProductItem {
  final String imagePath;
  final String brandName;
  final String productName;
  final double price;

  ProductItem({
    required this.imagePath,
    required this.brandName,
    required this.productName,
    required this.price,
  });
}

class ProductList extends StatelessWidget {
  final List<ProductItem> products;

  ProductList({required this.products});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          products.length,
          (index) => ProductCard(product: products[index]),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final ProductItem product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            child: Image(
              image: AssetImage(product.imagePath),
              fit: BoxFit.cover,
            ),
          ),
          Text(
            product.brandName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(product.productName),
          Text('₹${product.price.toString()}'),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: ProductList(
          products: [
            ProductItem(
              imagePath: 'assets/trendscroll7.jpg',
              brandName: 'Nike',
              productName: 'Air Max 90',
              price: 129.99,
            ),
            ProductItem(
              imagePath: 'assets/trendscroll7.jpg',
              brandName: 'G STAR RAW',
              productName: 'Rovic Zip 3D Tapered',
              price: 22999.0,
            ),
          ],
        ),
      ),
    ),
  );
}
