import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool defaultAppBar;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.defaultAppBar = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: defaultAppBar
          ? Container(
              padding: const EdgeInsets.all(20),
              color: Colors.amber,
              child: Text(
                title,
                style: const TextStyle(color: Colors.black),
              ),
            )
          : Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
