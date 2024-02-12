// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/nav_items.dart';
import 'package:flutter_portfolio/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onNavMenuTap,});
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
            height:60,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: double.maxFinite,
            color:  Color.fromARGB(255, 255, 255, 255),
            child: Row(
              children: [
                SiteLogo(onTap: () {

                }),
                Spacer(),

                for(int i=0; i<navTitles.length; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: TextButton(
                    onPressed: (){
                      onNavMenuTap(i);
                    },
                     child: Text(
                      navTitles[i],
                       style: TextStyle(
                        fontSize: 16,
                         fontWeight: FontWeight.w500,
                          color: Colors.black)
                    )
                  ),
                ),
              ],
            ),
          );
  }
}