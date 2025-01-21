import 'package:flutter/material.dart';

class ListingCard extends StatelessWidget {
  final String productName;
  final String productDate;
  final double productPrice;
  final String productImage;
  final String viewsproduct;

  const ListingCard(
      {super.key,
      required this.productName,
      required this.productPrice,
      required this.productDate,
      required this.productImage,
      required this.viewsproduct});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(10),
      height: 115,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromRGBO(8, 126, 139, 0.14),
      ),
      child: Row(
        children: [
          // Product Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              productImage,
              height: 90,
              width: 90,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          // Product Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  productName,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  viewsproduct,
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 129, 130, 130)),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${productPrice.toStringAsFixed(2)}",
                      style: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.normal,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      productDate,
                      style: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(239, 111, 111, 1),
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.visibility_off_rounded,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
