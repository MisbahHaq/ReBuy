import 'package:flutter/material.dart';
import 'package:rebuy/Components/constants/likedCard.dart';
import 'package:rebuy/Components/constants/sidetile.dart';
import 'package:rebuy/Drawer/order_items.dart';
import 'package:rebuy/Pages/home.dart';
import 'package:rebuy/Pages/listed_items.dart';

class LikedItems extends StatefulWidget {
  const LikedItems({super.key});

  @override
  State<LikedItems> createState() => _LikedItemsState();
}

class _LikedItemsState extends State<LikedItems> {
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
                        Navigator.of(context).maybePop();
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
                children: [
                  const sideTile(
                    TitleTile: "My Account",
                    iconTile: Icon(
                      Icons.person,
                      size: 45,
                    ),
                    subTile: "Edit your details, Account settings",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderedPage()));
                    },
                    child: const sideTile(
                        TitleTile: "My Orders",
                        iconTile: Icon(
                          Icons.shopping_cart_outlined,
                          size: 45,
                        ),
                        subTile: "View all your orders"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListedItems()));
                    },
                    child: const sideTile(
                      TitleTile: "My Listings",
                      iconTile: Icon(
                        Icons.list,
                        size: 45,
                      ),
                      subTile: 'View your product listing for sale',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LikedItems()));
                    },
                    child: const sideTile(
                      TitleTile: "Liked Items",
                      iconTile: Icon(
                        Icons.list,
                        size: 45,
                      ),
                      subTile: 'See the products you have wishlisted',
                    ),
                  ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeView()));
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black),
                      ),
                      child: const Icon(Icons.arrow_back_ios_new_rounded),
                    ),
                  ),
                  const Text(
                    'Liked items',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              LikedCard(
                  productName: "Apple AirPods Pro",
                  productPrice: 8.999,
                  productDate: "21 Jan 2021",
                  productImage: "assets/images/liked1.png"),
              LikedCard(
                  productName: "JBL Charge 2 Speaker",
                  productPrice: 6.499,
                  productDate: "20 Dec 2020",
                  productImage: "assets/images/liked2.png"),
              LikedCard(
                  productName: "PlayStation Controller",
                  productPrice: 1.299,
                  productDate: "14 Nov 2020",
                  productImage: "assets/images/liked3.png"),
              LikedCard(
                  productName: "Nexus Mountain Bike",
                  productPrice: 9.100,
                  productDate: "05 Oct 2020",
                  productImage: "assets/images/liked4.png"),
              LikedCard(
                  productName: "Wildcraft Ranger Tent",
                  productPrice: 999,
                  productDate: "30 Sep 2020",
                  productImage: "assets/images/liked5.png"),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 25,
                    width: 25,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 25,
                    width: 25,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "1",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 25,
                    width: 25,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "2",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 25,
                    width: 25,
                    child: const Padding(
                      padding: EdgeInsets.only(right: 4, left: 2),
                      child: Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
