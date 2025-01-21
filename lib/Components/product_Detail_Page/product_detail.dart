import 'package:flutter/material.dart';
import 'package:rebuy/Components/constants/constants.dart';
import 'package:rebuy/Components/constants/productPageDetail.dart';

class ProductDetail extends StatelessWidget {
  final String title;
  final String img;
  final double price;
  final String description;
  final String make;
  final String year;
  final String warranty;
  final String packing;

  const ProductDetail({
    required this.title,
    required this.img,
    required this.price,
    required this.description,
    required this.make,
    required this.year,
    required this.warranty,
    required this.packing,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 235, 235),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
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
                    "ReBuy",
                    style: TextStyle(fontSize: 38, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              ProductPageDetail(
                description: description,
                img: img,
                make: make,
                packing: packing,
                price: price,
                title: title,
                warranty: warranty,
                year: year,
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Recently viewed",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "View more",
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 17),
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
                                  make: "make",
                                  year: "year",
                                  warranty: "warranty",
                                  packing: "packing"),
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
            ],
          ),
        ),
      ),
    );
  }
}
