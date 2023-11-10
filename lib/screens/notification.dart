// import 'package:flutter/material.dart';

// class NotifiScreen extends StatefulWidget {
//   const NotifiScreen({Key? key}) : super(key: key);

//   @override
//   _NotifiScreenState createState() => _NotifiScreenState();
// }

// class _NotifiScreenState extends State<NotifiScreen> {
//   String activeButton = 'All';

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: PreferredSize(
//           preferredSize: Size.fromHeight(80),
//           child: AppBar(
//             backgroundColor: Colors.white,
//             titleSpacing: 0,
//             title: Padding(
//               padding: const EdgeInsets.only(top: 15),
//               child: Column(
//                 children: [
//                   Row(mainAxisAlignment: MainAxisAlignment.start, children: [
//                     const Text(
//                       'Notifications',
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ]),
//                   Row(
//                     // mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {
//                           setState(() {
//                             activeButton = 'All';
//                           });
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor:
//                               activeButton == 'All' ? Colors.black : null,
//                         ),
//                         child: Text('All'),
//                       ),
//                       ElevatedButton(
//                         onPressed: () {
//                           setState(() {
//                             activeButton = 'Order Updates';
//                           });
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: activeButton == 'Order Updates'
//                               ? Colors.black
//                               : null,
//                         ),
//                         child: Text('Order Updates'),
//                       ),
//                       ElevatedButton(

//                         onPressed: () {
//                           setState(() {
//                             activeButton = 'Promotions';
//                           });
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: activeButton == 'Promotions'
//                               ? Colors.black
//                               : null,
//                         ),
//                         child: Text('Promotions',
//                             style: TextStyle(color: Colors.black)),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

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
        backgroundColor: Color.fromARGB(255, 213, 218, 223),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.close,
                  color: Colors.black,
                )),
            titleSpacing: 0,
            title: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, // Aligns the column's content to the start (left)
                children: [
                  Row(
                    children: [
                      const Text(
                        'Notifications',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            activeButton = 'All';
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: activeButton == 'All'
                                ? Colors.black
                                : Colors.white,
                            side: BorderSide(width: 1)),
                        child: Text(
                          'All',
                          style: TextStyle(
                            color: activeButton == 'All'
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            activeButton = 'Order Updates';
                            Text(
                              'Order Updates',
                            );
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: activeButton == 'Order Updates'
                                ? Colors.black
                                : Colors.white,
                            side: BorderSide(width: 1)),
                        child: Text('Order Updates',
                            style: TextStyle(
                              color: activeButton == 'Order Updates'
                                  ? Colors.white
                                  : Colors.black,
                            )),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            activeButton = 'Promotions';
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: activeButton == 'Promotions'
                                ? Colors.black
                                : Colors.white,
                            side: BorderSide(width: 1)),
                        child: Text('Promotions',
                            style: TextStyle(
                              color: activeButton == 'Promotions'
                                  ? Colors.white
                                  : Colors.black,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Column(),
      ),
    );
  }
}
