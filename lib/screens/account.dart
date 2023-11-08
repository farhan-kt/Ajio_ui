// import 'package:flutter/material.dart';

// class AccountScreen extends StatefulWidget {
//   const AccountScreen({super.key});

//   @override
//   State<AccountScreen> createState() => _AccountScreenState();
// }

// class _AccountScreenState extends State<AccountScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 3,
//         backgroundColor: Colors.white,
//         title: Text(
//           'My Account',
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Row(
//           children: [
//             Container(
//                 child: CircleAvatar(
//                     radius: 60,
//                     backgroundColor: Colors.black,
//                     child: Icon(
//                       Icons.person_3_outlined,
//                       size: 40,
//                       color: Colors.white,
//                     )),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 SizedBox(
//                     width: 210,
//                     height: 50,
//                     child: ElevatedButton(
//                         style: ButtonStyle(
//                             backgroundColor:
//                                 MaterialStateProperty.all<Color>(Colors.black)),
//                         onPressed: () {},
//                         child: Text('Sign in/Join'))))
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 223, 223),
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        title: Text(
          'My Account',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 50),
              SizedBox(
                width: 210,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed: () {},
                  child: Text('Sign in/Join'),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  String title = '';
                  if (index == 0) {
                    title = 'Customer Care';
                  } else if (index == 1) {
                    title = 'Invite Friends & Earn';
                  } else if (index == 2) {
                    title = 'Coupon Quest';
                  }
                  return ListTile(
                    title: Text(title),
                    onTap: () {},
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
                itemCount: 3,
              ),
            ),
          )
        ],
      ),
    );
  }
}
