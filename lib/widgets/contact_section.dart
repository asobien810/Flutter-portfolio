// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/custom_textfield.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                width: double.maxFinite,
                color: Color.fromARGB(255, 255, 225, 249),
                child: Column(
                  children: [
                    //title
                    Text("Get in touch", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white,
                     ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 700),
                      child: Row(
                        children: [
                          Flexible(
                            child: CustomTextField(
                              hintText: "Your name",
                              ),
                            ),
                            SizedBox(width: 15,),
                            Flexible(
                              child: CustomTextField(
                                hintText: "Your e-mail",
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height:20),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 700, maxHeight: 300),
                      child: CustomTextField(
                                hintText: "Your message",
                                maxLines: 20,
                              ),
                    ),
                          ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 700, 
                        maxHeight: 300),
                        child: const SizedBox(
                          height: 20,
                        ),
                      ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Get in touch!")
                          ),

                          //send button
                    
                  ],
                ),
              );
  }
}