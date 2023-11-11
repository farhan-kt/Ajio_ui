import 'package:flutter/material.dart';

Widget CustomTabBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(kToolbarHeight),
    child: TabBar(isScrollable: true, indicatorColor: Colors.black, tabs: [
      Tab(
        icon: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.home_filled,
            color: Colors.black,
          ),
        ),
      ),
      const Tab(
        child: Row(children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.black,
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvN86vCVk2TjEbIu-RPf8fg8u8wSTf86uuEA&usqp=CAU"),
          ),
          SizedBox(width: 5),
          Text(
            'Sale',
            style: TextStyle(color: Colors.black),
          )
        ]),
      ),
      const Tab(
        child: Row(children: [
          CircleAvatar(
              radius: 15,
              backgroundColor: Colors.black,
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1GPQzRwesRR1qkKezfukGoN2LoPN-jAEo-A&usqp=CAU")),
          SizedBox(width: 5),
          Text(
            'Winterwear',
            style: TextStyle(color: Colors.black),
          )
        ]),
      ),
      const Tab(
        child: Row(children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.black,
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBu5vG3bCtDg_jVLNvFWWicwEMXhHvNOZ4cw&usqp=CAU"),
          ),
          SizedBox(width: 5),
          Text(
            'Men',
            style: TextStyle(color: Colors.black),
          )
        ]),
      ),
      const Tab(
        child: Row(children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.black,
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOAiRZnm7YjdxQhCScyX1ubwxvjRLv6jJ79Q&usqp=CAU"),
          ),
          SizedBox(width: 5),
          Text(
            'Women',
            style: TextStyle(color: Colors.black),
          )
        ]),
      ),
      const Tab(
        child: Row(children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.black,
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRSmnZNL0tvlQREKIv7sbshoCTuvDxnIXp2Q&usqp=CAU"),
          ),
          SizedBox(width: 5),
          Text(
            'Kids',
            style: TextStyle(color: Colors.black),
          )
        ]),
      ),
      const Tab(
        child: Row(children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.black,
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfuKNJNfukdS3qR0eLCtw8NTwm38IsSxn7yw&usqp=CAU"),
          ),
          SizedBox(width: 5),
          Text(
            'Jewellery',
            style: TextStyle(color: Colors.black),
          )
        ]),
      ),
      const Tab(
        child: Row(children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.black,
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvsDlfpvFceIiODnAzsgnM5Xteqe1JaFajBQ&usqp=CAU"),
          ),
          SizedBox(width: 5),
          Text(
            'Beauty',
            style: TextStyle(color: Colors.black),
          )
        ]),
      ),
      const Tab(
        child: Row(children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.black,
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaFbczhETJcu8OXd0U6DgGtXWhO5KNa1sVYg&usqp=CAU"),
          ),
          SizedBox(width: 5),
          Text(
            'Footwear',
            style: TextStyle(color: Colors.black),
          )
        ]),
      ),
      const Tab(
        child: Row(children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.black,
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQFkBeTxrsEhBQLmrb_4i-81-pdInvmBdy0w&usqp=CAU"),
          ),
          SizedBox(width: 5),
          Text(
            'Accessories',
            style: TextStyle(color: Colors.black),
          )
        ]),
      ),
    ]),
  );
}
