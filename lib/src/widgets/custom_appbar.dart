import 'package:flutter/material.dart';

import '../components/components.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    Key? key,
    required this.title,
    this.actions,
  }) : super(key: key);

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(child: Text(title)),
      actions: actions,
      backgroundColor: CustomColors.primary,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
