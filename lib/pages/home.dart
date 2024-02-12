// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, unused_import

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_portfolio/constants/nav_items.dart';
import 'package:flutter_portfolio/constants/skill_items.dart';
import 'package:flutter_portfolio/utils/project_utils.dart';
import 'package:flutter_portfolio/widgets/contact_section.dart';
import 'package:flutter_portfolio/widgets/custom_textfield.dart';
import 'package:flutter_portfolio/widgets/drawer_mobile.dart';
import 'package:flutter_portfolio/widgets/header_desktop.dart';
import 'package:flutter_portfolio/widgets/header_mobile.dart';
import 'package:flutter_portfolio/widgets/main_desktop.dart';
import 'package:flutter_portfolio/widgets/main_mobile.dart';
import 'package:flutter_portfolio/widgets/project_card.dart';
import 'package:flutter_portfolio/widgets/projects.dart';
import 'package:flutter_portfolio/widgets/site_logo.dart';
import 'package:flutter_portfolio/widgets/skills_desktop.dart';
import 'package:flutter_portfolio/widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController=ScrollController();
  final List<GlobalKey> navbarKeys=List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    const double kMinDesktopWidth = 600.0;
    const double kMedDesktopWidth = 800.0;
    return LayoutBuilder(
      builder: (context,constraints) {
        return Scaffold(
          key: scaffoldKey,
          endDrawer: constraints.maxWidth>=600.0?null: DrawerMobile(onNavItemTap: (int navIndex){
            //call function
            scaffoldKey.currentState?.closeEndDrawer();
            scrollToSection(navIndex);
          }),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  key: navbarKeys.first,
                ),
                //MAIN
                if(constraints.maxWidth>=600.0)
                HeaderDesktop(onNavMenuTap: (int navIndex){
                  //call function
                  scrollToSection(navIndex);
                }) else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
            
                if(constraints.maxWidth >= 600)
                const MainDesktop() else MainMobile(), // Main 
                    
                //SKILLS
                Container(
                  key: navbarKeys[1],
                  width: screenWidth,
                  padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: Color.fromARGB(255, 255, 225, 249),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("What I can do", style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),),
                      SizedBox(
                        height:50,
                      ),
                      if(constraints.maxWidth >= 600)
                const SkillsDesktop() else SkillsMobile() ,
                    ],
                  ),
                ),
                    
                //PROJECTS
               projectsSection(key: navbarKeys[2],),
               SizedBox(height:30),
                    
                //CONTACT
                ContactSection(key: navbarKeys[3],),        
              ]
            ),
          ),
        );
      }
    );
  }

  void scrollToSection(int navIndex){
    final key=navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!, 
      duration: const Duration(milliseconds: 500), 
      curve: Curves.easeInOut
      );
  }
}