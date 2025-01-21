import 'package:flutter/material.dart';
import 'package:rebuy/Components/constants/buyCard.dart';
import 'package:rebuy/Pages/home.dart';

class BuyDetailsPage extends StatefulWidget {
  final String img;
  final String title;
  final String make;
  final String year;

  const BuyDetailsPage({
    super.key,
    required this.title,
    required this.img,
    required this.make,
    required this.year,
  });

  @override
  State<BuyDetailsPage> createState() => _BuyDetailsPageState();
}

class _BuyDetailsPageState extends State<BuyDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 251, 245),
      body: Column(
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 35, top: 40),
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
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35, top: 40),
                child: const Text(
                  'ReBuy',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Center(
            child: Container(
              child: Image.asset(widget.img, height: 150),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Make: ${widget.make} | Year: ${widget.year}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BuyPage extends StatelessWidget {
  final String img;
  final String make;
  final String year;
  final String name;
  final double price;

  const BuyPage({
    super.key,
    required this.img,
    required this.make,
    required this.year,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: const Text(
                    'ReBuy',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              child: Image.asset("assets/images/bar1.png"),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: BuyCard(
              productName: name,
              productPrice: price,
              productImage: img,
              productMake: make,
              productYear: year,
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Container(
              width: 344,
              height: 175,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shipping address",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text("Alice Eve"),
                        Text("2074, Half and Half Drive"),
                        Text("Hialeah, Florida - 33012"),
                        Text("Ph: +1 561-230-0033"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 13),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(255, 232, 231, 231),
                        ),
                        child: Icon(
                          Icons.edit_calendar_rounded,
                          size: 28,
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Center(
              child: Container(
                width: 344,
                height: 175,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Invoice details",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text("Product cost:"), Text('$price')],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
