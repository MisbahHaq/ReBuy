import 'package:flutter/material.dart';
import 'package:rebuy/Components/constants/constants.dart';
import 'package:rebuy/Components/constants/sidetile.dart';
import 'package:rebuy/Components/product_Detail_Page/product_detail.dart';
import 'package:rebuy/Drawer/liked_items.dart';
import 'package:rebuy/Drawer/order_items.dart';
import 'package:rebuy/Pages/listed_items.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

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
                  const Text(
                    'Explore',
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(60, 60, 60, 1),
                      ),
                      width: 90,
                      height: 27,
                      child: const Center(
                        child: Text(
                          "Books",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(60, 60, 60, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 90,
                      height: 27,
                      child: const Center(
                        child: Text(
                          "Game",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(60, 60, 60, 1),
                      ),
                      width: 90,
                      height: 27,
                      child: const Center(
                        child: Text(
                          "Music",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(60, 60, 60, 1),
                      ),
                      width: 90,
                      height: 27,
                      child: const Center(
                        child: Text(
                          "Camera",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetail(
                          title: "Cordoba Mini Guitar",
                          img: "assets/images/explorepro.png",
                          price: 500,
                          description: " aihgaohg aihiaohtah",
                          make: "Cordoba",
                          year: "2020",
                          warranty: "Yes",
                          packing: "Yes"),
                    ),
                  );
                },
                child: ProductCard2(
                  userName: "Cliff Hanger",
                  userLocation: "El Dorado",
                  userImage: "assets/images/user1.png",
                  productImage: "assets/images/explorepro.png",
                  productName: "Cordoba Mini Guitar",
                  productDetails: "Make: Cordoba | Year: 2020",
                  productPrice: "500",
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetail(
                          title: "Mac 2017",
                          img: "assets/images/mac.jpg",
                          price: 389,
                          description: " aihgaohg aihiaohtah",
                          make: "California",
                          year: "2017",
                          warranty: "No",
                          packing: "No"),
                    ),
                  );
                },
                child: ProductCard2(
                  userName: "Frank N. Stein",
                  userLocation: "Shangri La",
                  userImage: "assets/images/user2.png",
                  productImage: "assets/images/mac.jpg",
                  productName: "Mac 2017",
                  productDetails: "Make: California | Year: 2017",
                  productPrice: "389",
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetail(
                          title: "Iphone 11",
                          img: "assets/images/phone.jpg",
                          price: 389,
                          description: " aihgaohg aihiaohtah",
                          make: "California",
                          year: "2022",
                          warranty: "No",
                          packing: "No"),
                    ),
                  );
                },
                child: ProductCard2(
                  userName: "Frank N. Stein",
                  userLocation: "Shangri La",
                  userImage: "assets/images/user2.png",
                  productImage: "assets/images/phone.jpg",
                  productName: "Iphone 11",
                  productDetails: "Make: California | Year: 2022",
                  productPrice: "489",
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetail(
                          title: "Iphone 13",
                          img: "assets/images/phone.jpeg",
                          price: 550,
                          description:
                              "The iPhone 13 display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.06 inches diagonally",
                          make: "California",
                          year: "2024",
                          warranty: "Yes",
                          packing: "Yes"),
                    ),
                  );
                },
                child: ProductCard2(
                  userName: "Frank N. Stein",
                  userLocation: "Shangri La",
                  userImage: "assets/images/user2.png",
                  productImage: "assets/images/phone.jpeg",
                  productName: "Iphone 13",
                  productDetails: "Make: California | Year: 2024",
                  productPrice: "550",
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetail(
                          title: "Sofa",
                          img: "assets/images/sofa.png",
                          price: 189,
                          description:
                              "coloured sofa while plain cushions will help give your living room a sense of cohesion as it can be in the colour palette that best fits in with the rest of the existing decorative items.",
                          make: "Local",
                          year: "2020",
                          warranty: "Yes",
                          packing: "Yes"),
                    ),
                  );
                },
                child: ProductCard2(
                  userName: "Cliff Hanger",
                  userLocation: "El Dorado",
                  userImage: "assets/images/user1.png",
                  productImage: "assets/images/sofa.png",
                  productName: "Sofa",
                  productDetails: "Make: Local | Year: 2020",
                  productPrice: "189",
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetail(
                          title: "Swiss Movado",
                          img: "assets/images/watched2.png",
                          price: 220,
                          description:
                              "This quest for innovation has made us one of the world's premier watchmakers, with a proud heritage of Swiss craftsmanship, design excellence, and technological innovation. With more than 100 patents and 200 international awards for watch design and time technology, Movado continues innovating into the future.",
                          make: "Swiss",
                          year: "2020",
                          warranty: "Yes",
                          packing: "Yes"),
                    ),
                  );
                },
                child: ProductCard2(
                  userName: "Cliff Hanger",
                  userLocation: "El Dorado",
                  userImage: "assets/images/user1.png",
                  productImage: "assets/images/watched2.png",
                  productName: "Swiss Movado",
                  productDetails: "Make: Swiss | Year: 2020",
                  productPrice: "220",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
