import 'package:flutter/material.dart';

class BasicAppBar extends StatelessWidget with PreferredSizeWidget {
  const BasicAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
