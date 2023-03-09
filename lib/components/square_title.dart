import 'package:flutter/material.dart';

class SquareTitle extends StatelessWidget {
  final String imagePath;

  const SquareTitle({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10)),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
