import 'package:flutter/material.dart';
import 'package:rebuy/Drawer/listing.dart';
import 'package:rebuy/Pages/liked_items.dart';
import 'package:rebuy/components/constants.dart';
import 'package:rebuy/components/product_detail.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
                  const sideTile(
                      TitleTile: "My Orders",
                      iconTile: Icon(
                        Icons.shopping_cart_outlined,
                        size: 45,
                      ),
                      subTile: "View all your orders"),
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
        child: Column(
          children: [
            // Header with avatar and menu
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage('assets/images/product.png'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hey Alice',
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(fontSize: 18, color: Colors.redAccent),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                ],
              ),
            ),
            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
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
            ),
            const SizedBox(height: 25),
            // New Arrivals
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 2),
                  child: Text(
                    "New Arrivals",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20, top: 2),
                  child: Text(
                    "View more",
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 17),
            // Horizontal scrollable product list
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetail(
                                title: "Batman Toy",
                                img: "assets/images/product.png",
                                price: 89,
                                description: "Batman Toy for kids..",
                                make: "",
                                year: "",
                                warranty: "No",
                                packing: "No"),
                          ),
                        );
                      },
                      child: ProductCard(
                        imagePath: "assets/images/product.png",
                        title: "Batman Toy",
                        subtitle: "2024 | FunSkool",
                        price: "89",
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetail(
                                title: "PSP 2000",
                                img: "assets/images/toy2.jpg",
                                price: 120,
                                description:
                                    "PSP 2000 in mint condition, SD Card slot not working.",
                                make: "PlayStation",
                                year: "2000",
                                warranty: "No",
                                packing: "No"),
                          ),
                        );
                      },
                      child: ProductCard(
                        imagePath: "assets/images/toy2.jpg",
                        title: "PSP 2000",
                        subtitle: "2000 | Gimmick",
                        price: "120",
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetail(
                                title: "Amazon Kindle",
                                img: "assets/images/product3.png",
                                price: 89,
                                description:
                                    "Amazon Kindle in good condition, 2000+ books in library.",
                                make: "Original",
                                year: "2017",
                                warranty: "No",
                                packing: "Yes"),
                          ),
                        );
                      },
                      child: ProductCard(
                        imagePath: "assets/images/product3.png",
                        title: "Amazon Kindle",
                        subtitle: "2024 | Gimmick",
                        price: "89",
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetail(
                                title: "Graphics Tablet",
                                img: "assets/images/product2.png",
                                price: 189,
                                description:
                                    "Wecom Graphis Tablet in good condition with stylus.",
                                make: "Original",
                                year: "2022",
                                warranty: "No",
                                packing: "No"),
                          ),
                        );
                      },
                      child: ProductCard(
                        imagePath: "assets/images/product2.png",
                        title: "Graphics Tablet",
                        subtitle: "2022 | Gimmick",
                        price: "189",
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetail(
                                title: "Toy Bus",
                                img: "assets/images/toy4.png",
                                price: 19,
                                description:
                                    "Toy Bus for kids, available in multiple colors..",
                                make: "",
                                year: "",
                                warranty: "",
                                packing: ""),
                          ),
                        );
                      },
                      child: ProductCard(
                        imagePath: "assets/images/toy4.png",
                        title: "Toy Bus",
                        subtitle: "2024 | FunSkool",
                        price: "19",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 8),
                  child: Text(
                    "Recently viewed",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20, top: 8),
                  child: Text(
                    "View more",
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 17),
            // Horizontal scrollable product list
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetail(
                                title: "Macbook Air 2017",
                                img: "assets/images/mac.jpg",
                                price: 289,
                                description:
                                    "Macbook Air 2017 offers a sleek design, 13.3-inch display, long battery life, and reliable performance with an Intel Core i5, 8GB RAM, and SSD storage—perfect for work, study, or travel.",
                                make: "California",
                                year: "2017",
                                warranty: "No",
                                packing: "Yes"),
                          ),
                        );
                      },
                      child: ProductCard(
                        imagePath: "assets/images/mac.jpg",
                        title: "Macbook Air 2017",
                        subtitle: "2024 | Gimmick",
                        price: "289",
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetail(
                                title: "Iphone 11",
                                img: "assets/images/phone.jpg",
                                price: 189,
                                description:
                                    " dual-camera system with Night Mode, A13 Bionic chip for fast performance, and long-lasting battery life. A durable, water-resistant design makes it a reliable and stylish choice.",
                                make: "California",
                                year: "2021",
                                warranty: "No",
                                packing: "Yes"),
                          ),
                        );
                      },
                      child: ProductCard(
                        imagePath: "assets/images/phone.jpg",
                        title: "Iphone 11",
                        subtitle: "2021 | Gimmick",
                        price: "189",
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetail(
                                title: "Batman Toy",
                                img: "assets/images/product.png",
                                price: 89,
                                description: "Batman Toy for Kids",
                                make: "",
                                year: "",
                                warranty: "No",
                                packing: "No"),
                          ),
                        );
                      },
                      child: ProductCard(
                        imagePath: "assets/images/product.png",
                        title: "Batman Toy",
                        subtitle: "2024 | FunSkool",
                        price: "89",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
