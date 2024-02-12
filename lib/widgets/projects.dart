import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/project_utils.dart';
import 'package:flutter_portfolio/widgets/project_card.dart';

class projectsSection extends StatelessWidget {
  const projectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return  Container(
                width: screenWidth,
                color: Color.fromARGB(255, 255, 208, 236),
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                child: Column(
                  children: [
                    const Text("Projects", style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),),
                    SizedBox(height: 50,),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 800),
                      child: Wrap(
                        spacing: 25,
                        runSpacing: 25,
                        children: [
                          for(int i = 0; i<allProjectUtils.length; i++)
                          ProjectCard(project: allProjectUtils[i]),
                        ],
                      ),
                    )
                  ],
                ),
              );
  }
}