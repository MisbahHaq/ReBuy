import 'package:flutter/material.dart';
import 'package:rebuy/Components/constants/listingCard.dart';
import 'package:rebuy/Pages/home.dart';

class ListedItems extends StatefulWidget {
  const ListedItems({super.key});

  @override
  State<ListedItems> createState() => _ListedItemsState();
}

class _ListedItemsState extends State<ListedItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 235, 235),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                  SizedBox(
                    width: 40,
                  ),
                  const Text(
                    'My Listings',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ListingCard(
                productName: "Apple AirPods Pro",
                productPrice: 8.999,
                productDate: "21 Jan 2021",
                productImage: "assets/images/liked1.png",
                viewsproduct: 'Views: 1K',
              ),
              ListingCard(
                productName: "JBL Charge 2 Speaker",
                productPrice: 6.499,
                productDate: "20 Dec 2020",
                productImage: "assets/images/liked2.png",
                viewsproduct: 'Views: 1.8K',
              ),
              ListingCard(
                productName: "PlayStation Controller",
                productPrice: 1.299,
                productDate: "14 Nov 2020",
                productImage: "assets/images/liked3.png",
                viewsproduct: 'Views: 2.2K',
              ),
              ListingCard(
                productName: "Nexus Mountain Bike",
                productPrice: 9.100,
                productDate: "05 Oct 2020",
                productImage: "assets/images/liked4.png",
                viewsproduct: 'Views: 1K',
              ),
              ListingCard(
                productName: "Wildcraft Ranger Tent",
                productPrice: 999,
                productDate: "30 Sep 2020",
                productImage: "assets/images/liked5.png",
                viewsproduct: 'Views: 1.2K',
              ),
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
