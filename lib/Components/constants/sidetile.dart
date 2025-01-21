import 'package:flutter/material.dart';

class sideTile extends StatelessWidget {
  final iconTile;
  final TitleTile;
  final subTile;
  const sideTile(
      {super.key,
      required this.TitleTile,
      required this.iconTile,
      required this.subTile});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.lightBlue[100],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: iconTile,
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                TitleTile,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                subTile,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
