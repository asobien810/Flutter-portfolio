import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //lplatfroms
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 450,
                          ),
                          child: Wrap(
                            spacing: 5.0,
                            runSpacing: 5.0,
                            children: [
                              for(int i =0; i<platformItems.length; i++)
                              Container(
                                width:200,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ListTile(
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                    vertical: 10.0,
                                  ),
                                  leading: Image.asset(platformItems[i]["img"],
                                  width: 40,),
                                  title: Text(platformItems[i]["title"]),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 50),
                        //skills
                        Flexible(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth:600,
                            ),
                            child: Wrap(
                              spacing: 10,
                              runSpacing: 10.0,
                              children: [
                                for(int i = 0; i<skillItems.length; i++)
                                Chip(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 12.0, 
                                    horizontal: 16),
                                    backgroundColor: Colors.white,
                                  label: Text(
                                    skillItems[i]["title"]),
                                   avatar: Image.asset(
                                    skillItems[i]["img"]),
                                   )
                              ],
                            ),
                          ),
                        )
                      ],
                    );
  }
}