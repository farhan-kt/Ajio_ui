import 'package:ajio_app/screens/notification.dart';
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
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
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
                  } else if (index == 3) {
                    return Column(
                      children: [
                        Container(
                            color: Color.fromARGB(255, 201, 195, 195),
                            height: 20),
                        ListTile(
                          title: Text('Notifications'),
                          trailing: IconButton(
                              onPressed: () {}, icon: Icon(Icons.arrow_right)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NotifiScreen()));
                          },
                        ),
                        Container(
                            color: Color.fromARGB(255, 201, 195, 195),
                            height: 20),
                      ],
                    );
                  } else if (index == 4) {
                    title = 'Return Creation Demo';
                  } else if (index == 5) {
                    title = 'How To Return';
                  } else if (index == 6) {
                    title = 'How Do I Redeem My Coupon?';
                  } else if (index == 7) {
                    title = 'Terms & Conditions';
                  } else if (index == 8) {
                    title = 'Promotions Terms & Conditions';
                  } else if (index == 9) {
                    title = 'Returns & Refunds Policy';
                  } else if (index == 10) {
                    title = 'We Respect Your Privacy';
                  } else if (index == 11) {
                    title = 'Fees & Payments';
                  } else if (index == 12) {
                    title = 'Who We Are';
                  } else if (index == 13) {
                    title = 'Join Our Team';
                  }

                  return ListTile(
                    title: Text(title),
                    trailing: IconButton(
                      onPressed: () {
                        // navigateToPage(title, context);
                      },
                      icon: Icon(Icons.arrow_right),
                    ),
                    onTap: () {
                      // navigateToPage(title, context);
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    thickness: 1,
                  );
                },
                itemCount: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
