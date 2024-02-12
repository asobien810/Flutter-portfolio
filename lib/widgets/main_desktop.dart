import 'package:flutter/material.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: screenSize.height/1.2,
                  constraints: BoxConstraints(minHeight: 350),
                  color: Color.fromARGB(255, 255, 208, 236),
                  padding:EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Hi,\nI'm Agnieszka Sobień\nA Frontend Developer", style: TextStyle(
                            fontSize: 25,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                          SizedBox(height: 15),
                          SizedBox(
                            width: 250,
                            child: ElevatedButton(
                              onPressed: () {},
                               child: const Text("Get in touch!",
                              ),
                            ),
                          )
                        ],
                      ),
                     Image.asset('assets/home_img.png',
                     width: screenWidth/2,
                     ),
                    ],
                  ),
                );
  }
}