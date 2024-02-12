// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/project_utils.dart';
import 'dart:js' as js;

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project
  });

  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 231, 189, 221),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(project.image, height: 140, width: 230, fit: BoxFit.cover,),
          //title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(project.title, style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
            ),
          ),
          //subtitle
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(project.subtitle, style: TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 255, 255, 255)
            ),
            ),
          ),
          Spacer(),
          //footer
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                const Text("Available on:", style: TextStyle(color: const Color.fromARGB(255, 255, 191, 212), fontSize: 10.0)),
                Spacer(),
                if(project.webLink!=null)
                InkWell(
                  onTap: () {
                    js.context.callMethod("open", [project.webLink]);
                  },
                  child: Image.asset("assets/web_icon.webp", width: 16,)),
              ],
            ),
          )
        ],
      ),
    );
  }
}