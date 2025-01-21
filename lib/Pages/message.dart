import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rebuy/components/constants.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color.fromARGB(255, 235, 235, 235),
      endDrawer: Drawer(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: const BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 30),
                    child: const Text(
                      'ReBuy',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 30),
                    child: IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 45,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: const [
                  sideTile(
                    TitleTile: "My Account",
                    iconTile: Icon(
                      Icons.person,
                      size: 45,
                    ),
                    subTile: "Edit your details, Account settings",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  sideTile(
                      TitleTile: "My Orders",
                      iconTile: Icon(
                        Icons.shopping_cart_outlined,
                        size: 45,
                      ),
                      subTile: "View all your orders"),
                  SizedBox(
                    height: 20,
                  ),
                  sideTile(
                      TitleTile: "My Listings",
                      iconTile: Icon(
                        Icons.list,
                        size: 45,
                      ),
                      subTile: 'View your product listing for sale'),
                  SizedBox(
                    height: 20,
                  ),
                  sideTile(
                      TitleTile: "Liked Items",
                      iconTile: Icon(
                        Icons.favorite_border,
                        size: 45,
                      ),
                      subTile: "See the products you have wishlisted"),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with "Message" title and menu button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Message',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Builder(
                    builder: (BuildContext context) {
                      return IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {
                          Scaffold.of(context).openEndDrawer();
                        },
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  hintText: 'Search for books, guitar, and more...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: const Icon(Icons.search),
                ),
              ),
              const SizedBox(height: 20),
              MessageTile(
                  userImage: "assets/images/user3.png",
                  productName: "Mac 2017",
                  time: "09:12 AM",
                  userMsg: "You: I love this product",
                  userName: "Bob"),
              const SizedBox(height: 8),
              MessageTile(
                  userImage: "assets/images/user3.png",
                  productName: "Mac 2017",
                  time: "Yesterday 09:12 AM",
                  userMsg: "Petey: Sorry, I'm unlisting it",
                  userName: "Petey Cruiser"),
              const SizedBox(height: 8),
              MessageTile(
                  userImage: "assets/images/user3.png",
                  productName: "Apple AirPods Pro",
                  time: "15 Feb 21, 09:30 AM",
                  userMsg: "Anna: You're welcome",
                  userName: "Anna Sthesia"),
              const SizedBox(height: 8),
              MessageTile(
                  userImage: "assets/images/user3.png",
                  productName: "JBL Charge Speakers",
                  time: "20 Dec 20, 09:12 AM",
                  userMsg: "Greta: Alright",
                  userName: "Greta Life"),
              const SizedBox(height: 8),
              MessageTile(
                  userImage: "assets/images/user3.png",
                  productName: "PlayStation Controller",
                  time: "09:12 AM",
                  userMsg: "You: ok",
                  userName: "Ira Membrit"),
            ],
          ),
        ),
      ),
    );
  }
}
