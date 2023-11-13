import 'package:flutter/material.dart';

class NotifiScreen extends StatefulWidget {
  const NotifiScreen({Key? key}) : super(key: key);

  @override
  _NotifiScreenState createState() => _NotifiScreenState();
}

class _NotifiScreenState extends State<NotifiScreen> {
  String activeButton = 'All';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 213, 218, 223),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            titleSpacing: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Notifications',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(48),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          activeButton = 'All';
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor:
                            activeButton == 'All' ? Colors.black : Colors.white,
                        side: const BorderSide(width: 1),
                      ),
                      child: Text(
                        'All',
                        style: TextStyle(
                          color: activeButton == 'All'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          activeButton = 'Order Updates';
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: activeButton == 'Order Updates'
                            ? Colors.black
                            : Colors.white,
                        side: const BorderSide(width: 1),
                      ),
                      child: Text(
                        'Order Updates',
                        style: TextStyle(
                          color: activeButton == 'Order Updates'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          activeButton = 'Promotions';
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: activeButton == 'Promotions'
                            ? Colors.black
                            : Colors.white,
                        side: const BorderSide(width: 1),
                      ),
                      child: Text(
                        'Promotions',
                        style: TextStyle(
                          color: activeButton == 'Promotions'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          color: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: ListTile(
                    title: const Text('👉 Buda Jeans 👉Fyre Rose'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Under ₹599: Sale Ends Tommorow'),
                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                        width: 2, color: Colors.black),
                                  ),
                                  child: const Text(
                                    'Shop Now',
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
