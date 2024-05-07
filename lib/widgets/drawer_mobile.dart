import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({
    super.key,
    required this.onNavItemTap,
  });
  final Function(int) onNavItemTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: Padding(
            //     padding: const EdgeInsets.only(
            //       left: 20,
            //       top: 20,
            //       bottom: 20,
            //     ),
            //     child: IconButton(
            //       onPressed: () {
            //         Navigator.of(context).pop();
            //       },
            //       icon: const Icon(Icons.close),
            //     ),
            //   ),
            // ),
            for (int i = 0; i < navIcons.length; i++)
              ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                titleTextStyle: const TextStyle(
                  color: CustomColor.scaffoldBg,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
                onTap: () {
                  onNavItemTap(i);
                },
                leading: Icon(navIcons[i]),
                title: Text(navTitles[i]),
              )
          ],
        ),
      ),
    );
  }
}
