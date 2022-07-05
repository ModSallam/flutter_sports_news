import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String title;
  final Function() onTap;

  const ImageCard({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}