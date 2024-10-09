import 'package:e_commerce/Screens/constants.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String description;
  final String text;
  const Description({super.key, required this.description, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: kprimaryColor,
              height: 40,
              width: 100,
              alignment: Alignment.center,
              child: Text(
                "Description",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15),
              ),
            ),
            Container(
              color: kprimaryColor,
              height: 40,
              width: 100,
              alignment: Alignment.center,
              child: Text(
                "Spification",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15),
              ),
            ),
            Container(
              color: kprimaryColor,
              height: 40,
              width: 100,
              alignment: Alignment.center,
              child: Text(
                "Reviews",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 18,
        ),
        Text(
          description,
          style: TextStyle(fontSize: 15, color: Colors.grey),
        )
      ],
    );
  }
}
