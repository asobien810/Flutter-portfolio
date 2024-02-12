// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key, required this.onNavItemTap});
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color.fromARGB(255, 255, 208, 236),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left:20,
                   top: 20,
                    bottom: 20
                    ),
                child: IconButton(onPressed: () {
                  Navigator.of(context).pop();
                },
                 icon: Icon(Icons.close)
                 ),
              ),
            ),
            for (int i = 0; i < navIcons.length; i++)
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 30
                ),
              titleTextStyle: TextStyle(
                color: Color.fromARGB(255, 57, 57, 57),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              onTap: (){onNavItemTap(i);},
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
            )
          ],
        ),
      );
  }
}