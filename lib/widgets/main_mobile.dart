import 'package:flutter/material.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 30,
                ),
                color: Color.fromARGB(255,255,208,236),
                height: screenHeight,
                constraints: BoxConstraints(minHeight: 560),
                child: Column (
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     ShaderMask(
                      shaderCallback: (bounds) {
                        return LinearGradient(colors: [Color.fromARGB(255, 254, 196, 232), Color.fromARGB(255, 255, 189, 238).withOpacity(0.6)
                        ]).createShader(bounds);
                      },
                      blendMode: BlendMode.srcATop,
                       child: Image.asset(
                        'assets/home_img.png',
                        width: screenWidth,
                        ),
                     ),
                     SizedBox(height: 30,),
                    const Text("Hi,\nI'm Agnieszka Sobień\nA Frontend Developer", style: TextStyle(
                            fontSize: 22,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                          SizedBox(height: 15),
                          SizedBox(
                            width: 190,
                            child: ElevatedButton(
                              onPressed: () {},
                               child: const Text("Get in touch!",
                              ),
                            ),
                          )
                  ],
                ),             );
  }
}